import time
import os,sys,inspect
import datetime
import numpy as np

currentdir = os.path.dirname(os.path.abspath(inspect.getfile(inspect.currentframe())))
parentdir = os.path.dirname(currentdir)
sys.path.insert(0,parentdir)

import simple_client

for i in range(100):
    if i == 1:
        print (datetime.datetime.now())
    a = time.time()
    mat = np.random.rand(400,400)
    u,s,v = np.linalg.svd(mat)
print(datetime.datetime.now())
