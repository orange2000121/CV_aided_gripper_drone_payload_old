import cv2 

cap = cv2.VideoCapture(0)

if(not cap.isOpened()):
    print("Cannot open camera")

while True:
    ret, frame = cap.read()
    cv2.imshow('frame', frame)
    if cv2.waitKey(1) == ord('q'):
        break