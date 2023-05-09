from time import sleep
import memcache

mc = memcache.Client(['127.0.0.1:11211'], debug=True)

while True:
    x = mc.get('x')
    y = mc.get('y')
    z = mc.get('z')
    print('x: ', x, 'y: ', y, 'z: ', z)
    sleep(0.5)