
import cv2
import numpy as np
import time
import PoseModule as pm
import matplotlib.pyplot as plt 


cap = cv2.VideoCapture("PoseVideos/Marche_plan_lateral.mp4")
 
detector = pm.poseDetector()
count = 0
dir = 0
pTime = 0
Tick=0

dict_articulation={"poignet droit": (18,16,14),
            "poignet gauche":(17,15,13),
            "coude droit":(16,14,12),
            "coude gauche":(15,13,11),
            "epaule droite":(14,12,24),
            "epaule gauche":(13,11,23),
            "hanche droite":(12,24,25),
            "hanche gauche":(11,23,25),
            "genou droit":(24,26,28),
            "genou gauche":(23,25,27),
            "chevile droite":(26,28,30),
            "chevile gauche":(25,27,29)}
articulation_analyse=("genou droit","genou gauche")
shared_dict=[]
angles={}
for i in articulation_analyse:
    if (i in dict_articulation.keys()):
        shared_dict.append(i)

def get_angles():
    for i in shared_dict:
        angles[i].append(detector.findAngle(img, dict_articulation[i][0], dict_articulation[i][1], dict_articulation[i][2]))
    
    return angles



def moyenne_glissante(valeurs, intervalle):
    indice_debut = (intervalle - 1) // 2
    liste_moyennes = [sum(valeurs[i - indice_debut:i + indice_debut + 1]) / intervalle for i in range(indice_debut, len(valeurs) - indice_debut)]
    return liste_moyennes

x_time=0
x=[]
y_HD=[]
y_HG=[]
y_GD=[]
y_GG=[]
y_CD=[]
y_CG=[]


while True:
    success, img = cap.read()
    if not success:
        break
    img = cv2.resize(img, (1280, 720))
    # img = cv2.imread("AiTrainer/test.jpg")
    img = detector.findPose(img, False)
    lmList = detector.findPosition(img, False)

    if len(lmList) != 0:

       print(get_angles())
    
    Tick=Tick+1
    x.append(Tick)
    # y_HD.append(angle_HD)
    # y_HG.append(angle_HG)
    # y_GD.append(angle_GD)
    # y_GG.append(angle_GG)
    # y_CD.append(angle_CD)
    # y_CG.append(angle_CG) 

 
    cTime = time.time()
    fps = 1 / (cTime - pTime)
    pTime = cTime
    cv2.putText(img, str(int(fps)), (50, 100), cv2.FONT_HERSHEY_PLAIN, 5,
                (255, 0, 0), 5)
 
    cv2.imshow("Image", img)

    if cv2.waitKey(1)==ord('q'):
        break


cap.release()
cv2.destroyAllWindows()
# fig = plt.figure(figsize=(12,12))

# fig.add_subplot(3,2,1)
# plt.title ("Amplitude Hanche droite")
# #plt.plot(x, y_HD)
# plt.plot(x[1:-1],moyenne_glissante(y_HD,3))
# fig.add_subplot(3,2,2)
# plt.title ("Amplitude Hanche Gauche")
# plt.plot(x[1:-1],moyenne_glissante(y_HG,3))
# #qqqqqplt.plot(x, y_HG)

# fig.add_subplot(3,2,3)
# plt.title ("Amplitude genou droit")
# plt.plot(x[1:-1],moyenne_glissante(y_GD,3))
# #plt.plot(x, y_GD)
# fig.add_subplot(3,2,4)
# plt.title ("Amplitude genou gauche")
# plt.plot(x[1:-1],moyenne_glissante(y_GG,3))
# #plt.plot(x, y_GG)

# fig.add_subplot(3,2,5)
# plt.title ("Amplitude cheville droite")
# plt.plot(x[1:-1],moyenne_glissante(y_CD,3))
# #plt.plot(x, y_CD)
# fig.add_subplot(3,2,6)
# plt.title ("Amplitude cheville gauche")
# plt.plot(x[1:-1],moyenne_glissante(y_CG,3))
# #plt.plot(x, y_CG)

plt.show()
