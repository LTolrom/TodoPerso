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
cap= cv2.VideoCapture(0)

while True:
    sucess,img = cap.read()
    imgS= cv2.resize(img,(0,0),None, 0.25,0.25) #réduire la taille pour gagner en temps de traitement
    imgs= cv2.cvtColor (imgS,cv2.COLOR_BGR2RGB)
    
    facesCurFrame = face_recognition.face_locations(imgS) #face_location retourne quatre valeurs (top,right,bottom,left)
    encodesCurFrame = face_recognition.face_encodings(imgS, facesCurFrame)

    for encodeFace,faceLoc in zip(encodesCurFrame,facesCurFrame):
        matches = face_recognition.compare_faces(encodeListKnow, encodeFace)
        faceDis= face_recognition.face_distance(encodeListKnow, encodeFace)
        print(faceDis)
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
            if abs(f2x1-x1)<10 and abs(f2y1-y1)< 10:
                
            cv2.putText(img,'Unknow',(x2+6,y2-6),cv2.FONT_HERSHEY_COMPLEX,1,(255,255,255),2)
            f2x1=x1
            f2y2=y2


    cv2.imshow('Webcam',img)
    cv2.waitKey(1)

# faceLoc= face_recognition.face_locations(imgLeo)[0] #face_location retourne quatre valeurs (top,right,bottom,left)
# encodeLeo= face_recognition.face_encodings(imgLeo)[0]
# cv2.rectangle(imgLeo,(faceLoc[3],faceLoc[0]),(faceLoc[1],faceLoc[2]),(255,0,255),2)

# faceLocTest = face_recognition.face_locations(imgTest)[0] #face_location retourne quatre valeurs (top,right,bottom,left)
# encodeLeoTest= face_recognition.face_encodings(imgTest)[0]
# cv2.rectangle(imgTest,(faceLocTest[3],faceLocTest[0]),(faceLocTest[1],faceLocTest[2]),(255,0,255),2)

# results = face_recognition.compare_faces([encodeLeo],encodeLeoTest)
# faceDis = face_recognition.face_distance([encodeLeo],encodeLeoTest)
