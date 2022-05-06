import cv2
import numpy as np
import time
import RPi.GPIO as GPIO

def angle_to_percent (angle) :
    if angle > 180 or angle < 0 :
        return False
    
    # d'après la datasheet du sg90 et du mg90s
    # 1ms pulse for -90(ou 0) degree (LEFT)
    # 1.5ms pulse for 0(ou 90) degree (MIDDLE)
    # 2ms pulse for 90(ou 180) degree (RIGHT)

    # donc pour du 50hz (20ms)
    # duty cycle pour 0 degre = (1/20)*100 = 5%
    # duty cycle pour 90 degres = (1.5/20)*100 = 7.5% 
    # duty cycle pour 180 degres = (2/20)*100 = 10% 

    # ça c'est la théorie, en pratique les résultats ne corresponde pas
    #pour ma part j'ai évalué (approximativement) le 0° à 2.5% et le 180° à 12.5%

    start = 2.5
    end = 12.55
    ratio = (end - start)/180 # Calcul du ratio pour passer d'angle à %

    angle_as_percent = angle * ratio

    return start + int(angle_as_percent)

print(cv2.__version__)
timeMark=time.time()

dtFIL=0
 
def nothing(x):
    pass
 
cv2.namedWindow('TrackBars')
cv2.moveWindow('TrackBars',1320,0)
cv2.createTrackbar('hueLower', 'TrackBars',110,179,nothing)
cv2.createTrackbar('hueUpper', 'TrackBars',130,179,nothing)
cv2.createTrackbar('satLow', 'TrackBars',160,255,nothing)
cv2.createTrackbar('satHigh', 'TrackBars',255,255,nothing)
cv2.createTrackbar('valLow', 'TrackBars',150,255,nothing)
cv2.createTrackbar('valHigh', 'TrackBars',255,255,nothing)
 
 
tilt=90
pan=90

pin_Pan=32
pin_Tilt=33

GPIO.setmode(GPIO.BOARD)
GPIO.setup(pin_Pan, GPIO.OUT)
GPIO.setup(pin_Tilt, GPIO.OUT)
frequence = 50

tilt = GPIO.PWM(pin_Tilt, frequence)
pan = GPIO.PWM(pin_Pan, frequence)

width=720
height=480
flip=2

pos_tilt=90
pos_pan=90
tilt.start(angle_to_percent(pos_tilt))
pan.start(angle_to_percent(pos_pan))


cible=100
cible_p1=(int(-cible+width/2),int(cible+height/2))
cible_p2=(int(cible+width/2),int(-cible+height/2))

font=cv2.FONT_HERSHEY_SIMPLEX
camSet1='nvarguscamerasrc sensor-id=0 ee-mode=1 ee-strength=0 tnr-mode=2 tnr-strength=1 wbmode=3 ! video/x-raw(memory:NVMM), width=3264, height=2464, framerate=21/1,format=NV12 ! nvvidconv flip-method='+str(flip)+' ! video/x-raw, width='+str(width)+', height='+str(height)+', format=BGRx ! videoconvert ! video/x-raw, format=BGR ! videobalance contrast=1.3 brightness=-.2 saturation=1.2 ! appsink drop=True'
record = cv2.VideoWriter('Turret_IA2.avi', cv2.VideoWriter_fourcc(*'MJPG'), 21, (width,height)) 
cam1=cv2.VideoCapture(camSet1)
while True:
    _, frame1 = cam1.read()

 
    hsv1=cv2.cvtColor(frame1,cv2.COLOR_BGR2HSV)
 
    hueLow=cv2.getTrackbarPos('hueLower', 'TrackBars')
    hueUp=cv2.getTrackbarPos('hueUpper', 'TrackBars')
 
    Ls=cv2.getTrackbarPos('satLow', 'TrackBars')
    Us=cv2.getTrackbarPos('satHigh', 'TrackBars')
 
    Lv=cv2.getTrackbarPos('valLow', 'TrackBars')
    Uv=cv2.getTrackbarPos('valHigh', 'TrackBars')
 
    l_b=np.array([hueLow,Ls,Lv])
    u_b=np.array([hueUp,Us,Uv])
 

 
    FGmask1=cv2.inRange(hsv1,l_b,u_b)

    cv2.rectangle(FGmask1,cible_p1,cible_p2,(0,255,255),3)
 
    cv2.imshow('FGmask1',FGmask1)
    cv2.moveWindow('FGmask1',0,0)

    contours1,_ = cv2.findContours(FGmask1,cv2.RETR_EXTERNAL,cv2.CHAIN_APPROX_SIMPLE)
    contours1=sorted(contours1,key=lambda x:cv2.contourArea(x),reverse=True)
    
    for cnt in contours1:
        area=cv2.contourArea(cnt)
        (x,y,w,h)=cv2.boundingRect(cnt)
        if area>=100:
            cv2.rectangle(frame1,(x,y),(x+w,y+h),(0,255,255),3)
            
            objX=x+w/2
            objY=y+h/2
            errorPan=objX-width/2
            errorTilt=objY-height/2

            
            if abs(errorPan)>cible:
                pos_pan=pos_pan-errorPan/40
            if abs(errorTilt)>cible:
                pos_tilt=pos_tilt+errorTilt/40
            if pos_pan>180:
                pos_pan=180
                print(f'Pan Out of Range{pos_pan}')
            if pos_pan<0:
                pos_pan=0
                print(f'Pan Out of Range{pos_pan}')
            if pos_tilt>160:
                pos_tilt=160
                print(f'Tilt Out of Range {pos_tilt}')
            if pos_tilt<0:
                pos_tilt=0
                print(f'Tilt Out of Range {pos_tilt}')
            
            tilt.start(angle_to_percent(pos_tilt))
            pan.start(angle_to_percent(pos_pan))

            break
                    
    dt=time.time()-timeMark
    timeMark=time.time()
    dtFIL=.9*dtFIL + .1*dt
    fps=1/dtFIL
    cv2.rectangle(frame1,(0,0),(150,40),(0,0,255),-1)
    cv2.putText(frame1,'fps: '+str(round(fps,1)),(0,30),font,1,(0,255,255),2)
    
    cv2.rectangle(frame1,cible_p1,cible_p2,(255,0,255),1)
    record.write(frame1)
    cv2.imshow('comboCam',frame1)
    cv2.moveWindow('comboCam',0,450)
 
    if cv2.waitKey(1)==ord('q'):
        break
cam1.release()
tilt.stop()
pan.stop()
GPIO.cleanup()
cv2.destroyAllWindows()