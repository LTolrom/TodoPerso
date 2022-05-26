import time

xtime=time.time()


while True:
    
    if time.time()-xtime>0.1:
        print("0.1")
        xtime=time.time()
