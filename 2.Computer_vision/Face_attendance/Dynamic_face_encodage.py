from sqlite3 import Time
import cv2
import numpy as np
import face_recognition
import os
from datetime import  datetime
import time

path ='data/LeoTrain'
images = []
classNames = []
myList = os.listdir(path)
font=cv2.FONT_HERSHEY_SIMPLEX
timeMark=time.time()

dtFIL=0
print(myList)

for cl in myList:
    curImg= cv2.imread(f'{path}/{cl}')
    images.append(curImg)
    classNames.append(os.path.splitext(cl)[0])

print (classNames)

def findEncodings(images):
    encodeList= []
    for img in images:
        img = cv2.cvtColor(img,cv2.COLOR_BGR2RGB)
        encode= face_recognition.face_encodings(img)[0]
        encodeList.append(encode)
    return encodeList



def markAttendance(name):
    with open('attendance.csv', 'r+') as f:
        myDataList = f.readlines()
        nameList= []
        for line in myDataList:
            entry = line.split(',')
            nameList.append(entry[0])
        if name not in nameList:
            now=datetime.now()
            dtString = now.strftime('%H:%M:%S')
            f.writelines(f'\n{name},{dtString}')


encodeListKnow = findEncodings(images)
print('encoding Complete')
f2x1=0
f2y1=0

i=0

width=720
height=480
flip=2
camSet1='nvarguscamerasrc sensor-id=0 ee-mode=1 ee-strength=0 tnr-mode=2 tnr-strength=1 wbmode=3 ! video/x-raw(memory:NVMM), width=3264, height=2464, framerate=21/1,format=NV12 ! nvvidconv flip-method='+str(flip)+' ! video/x-raw, width='+str(width)+', height='+str(height)+', format=BGRx ! videoconvert ! video/x-raw, format=BGR ! videobalance contrast=1.3 brightness=-.2 saturation=1.2 ! appsink drop=True'
cap= cv2.VideoCapture(camSet1)
#cap= cv2.VideoCapture(0) --pour webcam

while True:
    sucess,img = cap.read()
    imgS= cv2.resize(img,(0,0),None, 0.25,0.25) #réduire la taille pour gagner en temps de traitement
    imgs= cv2.cvtColor (imgS,cv2.COLOR_BGR2RGB)
    
    facesCurFrame = face_recognition.face_locations(imgS) #face_location retourne quatre valeurs (top,right,bottom,left)
    encodesCurFrame = face_recognition.face_encodings(imgS, facesCurFrame)
    if not encodesCurFrame:
        TimeMark=time.time()

    for encodeFace,faceLoc in zip(encodesCurFrame,facesCurFrame):
        matches = face_recognition.compare_faces(encodeListKnow, encodeFace)
        faceDis= face_recognition.face_distance(encodeListKnow, encodeFace)
        matchIndex= np.argmin(faceDis)

        y1,x1,y2,x2= faceLoc
        y1,x1,y2,x2= y1*4,x1*4,y2*4,x2*4 # comme on à rezise l'image il faut corriger les positions du rectangle
        cv2.rectangle(img,(x1,y1),(x2,y2),(0,255,0),2)
        cv2.rectangle(img,(x1,y2-35),(x2,y2),(0,255,0),cv2.FILLED)
        

        if matches[matchIndex]:
            name = classNames[matchIndex].upper()
            cv2.putText(img,name,(x2+6,y2-6),cv2.FONT_HERSHEY_COMPLEX,1,(255,255,255),2)
            markAttendance(name)
        else:
            if abs(f2x1-x1)>10 and abs(f2y1-y1)> 10:
                TimeMark=time.time()
            elif time.time()-TimeMark>3 :
                TimeMark=time.time()
                while True:
                    i=i+1
                    if not os.path.exists(f'data/LeoTrain/Unknow{i}.png'):
                        cv2.imwrite(f'{path}/Unknow{i}.png',img)
                        newCurImg= cv2.imread(f'{path}/Unknow{i}.png')
                        images.append(newCurImg)
                        myList.append(f'Unknow{i}.png')
                        print(myList)
                        classNames.append(os.path.splitext(f'Unknow{i}.png')[0])
                        print(classNames)
                        newImg = cv2.cvtColor(img,cv2.COLOR_BGR2RGB)
                        newEncode= face_recognition.face_encodings(img)[0]
                        encodeListKnow.append(newEncode)
                        print('New encoding Complete')
                        i=0

                        break

                
            cv2.putText(img,'Unknow',(x2+6,y2-6),cv2.FONT_HERSHEY_COMPLEX,1,(255,255,255),2)
            f2x1=x1
            f2y2=y2

    

    dt=time.time()-timeMark
    timeMark=time.time()
    dtFIL=.9*dtFIL + .1*dt
    fps=1/dtFIL
    cv2.rectangle(img,(0,0),(150,40),(0,0,255),-1)
    cv2.putText(img,'fps: '+str(round(fps,1)),(0,30),font,1,(0,255,255),2)

    cv2.imshow('Webcam',img)

    if cv2.waitKey(1)==ord('q'):
        break
cap.release()

cv2.destroyAllWindows()