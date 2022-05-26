
import cv2
import time
import PoseModule as pm
import matplotlib.pyplot as plt 


detector = pm.poseDetector()
##Setup affichage des fps
pTime = 0
##Setup variable axe x
tick=0
xtime=0
x=[]
##Setup variable axe y
angles={}
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
            "cheville droite":(26,28,30),
            "cheville gauche":(25,27,29)}

##Choix des articulation à analyser
articulation_analyse=("hanche droite","hanche gauche", "genou droit","genou gauche","cheville droite","cheville gauche")

for i in dict_articulation.keys():
    if (i in articulation_analyse):
        angles[i]=[]

#choix du media
cap = cv2.VideoCapture("PoseVideos/Marche_plan_lateral.mp4")

def get_angles():
    for i in angles:
        angles[i].append((detector.findAngle(img, dict_articulation[i][0], dict_articulation[i][1], dict_articulation[i][2])))
    

def moyenne_glissante(valeurs, intervalle):
    indice_debut = (intervalle - 1) // 2
    liste_moyennes = [sum(valeurs[i - indice_debut:i + indice_debut + 1]) / intervalle for i in range(indice_debut, len(valeurs) - indice_debut)]
    return liste_moyennes

def plot_angles(x,angles,largeur,hauteur,n_hauteur,n_largeur):
    fig = plt.figure(figsize=(largeur,hauteur))
    n_plot=0
    for i in angles:
        n_plot=n_plot+1
        fig.add_subplot(n_hauteur,n_largeur,n_plot)
        plt.title (i)
        plt.plot(x[1:-1],moyenne_glissante(angles[i],3)) #si on veut changer l'intervalle de la moyenne glissante il faut adapter l'intervalle de x





while True:
    success, img = cap.read()
    if not success:
        break
    img = cv2.resize(img, (1280, 720))
    img = detector.findPose(img, False)
    lmList = detector.findPosition(img, False)

    if len(lmList) != 0:
            if time.time()-xtime>0.05:
                xtime=time.time()
                get_angles()
                tick=tick+0.05
                x.append(tick)

    
    

 
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

plot_angles(x,angles,12,12,3,2)

plt.show()
