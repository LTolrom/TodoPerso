from ast import While
import tkinter as tk
import os


root= tk.Tk()

import tkinter as tk

i = 0
oldName='George.png'

    
def increase_value():
    newName = entry1.get()
    os.rename(oldName,newName+'.png')
    oldName=newName
    print("ok")


sdqzdq

canvas1 = tk.Canvas(root, width = 400, height = 300)
canvas1.pack()

entry1 = tk.Entry (root) 
canvas1.create_window(200, 140, window=entry1)

bt = tk.Button(text='Hi new head, who are you?', command=increase_value, repeatdelay=20, repeatinterval=50) 
canvas1.create_window(200, 180, window=bt)

tk.mainloop()

root.mainloop()

    