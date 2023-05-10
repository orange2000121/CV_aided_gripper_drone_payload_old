import cv2 
import memcache
import numpy as np
import struct

cap = cv2.VideoCapture(0)
mc = memcache.Client(['127.0.0.1:11211'], debug=True)

if(not cap.isOpened()):
    print("Cannot open camera")

while True:
    ret, frame = cap.read()
    # cv2.imshow('frame', frame)
    arucoDict = cv2.aruco.Dictionary_get(cv2.aruco.DICT_6X6_50)
    arucoParams = cv2.aruco.DetectorParameters_create()
    (corners, ids, rejected) = cv2.aruco.detectMarkers(frame, arucoDict,parameters=arucoParams)

    mtx = [[511.30105788, 0.0, 330.14455905], [0.0, 510.54688952, 247.69595943],[0.0, 0.0, 1.0]]
    dist = [[0.18435012, -0.57693444, 0.00853163, 0.00982479, 0.46038521]]
    mtx = np.array(mtx)
    dist = np.array(dist)
    # print(corners)
    # print(ids)
    # print(rejected)
    if len(corners) > 0:
        for i in range(len(ids)):
            # cv2.aruco.drawDetectedMarkers(frame, corners, ids)
            rvec, tvec, markerPoints = cv2.aruco.estimatePoseSingleMarkers(corners[i], 0.02, mtx, dist)
        x = tvec[0][0][0]
        y = tvec[0][0][1]
        z = tvec[0][0][2]
        print('x: ', str(x), 'y: ', y, 'z: ', z)
        mc.set('x', str(x))
        mc.set('y', str(y))
        mc.set('z', str(z))
    else:
        # print('no markers')
        mc.set('x', 'null')
        mc.set('y', 'null')
        mc.set('z', 'null')
    # cv2.imshow('frame', frame)
    if cv2.waitKey(1) == ord('q'):
        break
    