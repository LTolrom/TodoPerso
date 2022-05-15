import cv2
import numpy as np
import face_recognition

imgLeo= face_recognition.load_image_file ('data/LeoTrain/Train.jpg')
imgLeo =cv2.cvtColor(imgLeo, cv2.COLOR_BGR2RGB)
imgTest= face_recognition.load_image_file ('data/LeoTest/Test.jpg')
imgTest =cv2.cvtColor(imgTest, cv2.COLOR_BGR2RGB)

faceLoc= face_recognition.face_locations(imgLeo)[0] #face_location retourne quatre valeurs (top,right,bottom,left)
encodeLeo= face_recognition.face_encodings(imgLeo)[0]
cv2.rectangle(imgLeo,(faceLoc[3],faceLoc[0]),(faceLoc[1],faceLoc[2]),(255,0,255),2)

faceLocTest = face_recognition.face_locations(imgTest)[0] #face_location retourne quatre valeurs (top,right,bottom,left)
encodeLeoTest= face_recognition.face_encodings(imgTest)[0]
cv2.rectangle(imgTest,(faceLocTest[3],faceLocTest[0]),(faceLocTest[1],faceLocTest[2]),(255,0,255),2)

results = face_recognition.compare_faces([encodeLeo],encodeLeoTest)
faceDis = face_recognition.face_distance([encodeLeo],encodeLeoTest)

print(results, faceDis)
cv2.putText(imgTest, f'{results} {round(faceDis[0],2)}', (50,50),cv2.FONT_HERSHEY_COMPLEX,1,(0,0,255),2)

cv2.imshow('Leo',imgLeo)
cv2.imshow('Test',imgTest)

cv2.waitKey(0)