import time
import os,sys,inspect
import datetime
import numpy as np

currentdir = os.path.dirname(os.path.abspath(inspect.getfile(inspect.currentframe())))
parentdir = os.path.dirname(currentdir)
sys.path.insert(0,parentdir)

import simple_client

num_time = int(sys.argv[1])
expt_name = sys.argv[2]

for i in range(num_time):
    if i == 1:
        start = datetime.datetime.now()
    a = time.time()

mat = np.random.rand(900,900)
u,s,v = np.linalg.svd(mat)
end = datetime.datetime.now()

elapsed = end - start

with open('/home/rishi/' + expt_name + '.csv', 'a') as f:
    print(elapsed.total_seconds())
    print('{},{}'.format(num_time, elapsed.total_seconds()), file=f)