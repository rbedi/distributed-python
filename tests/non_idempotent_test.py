import os,sys,inspect

currentdir = os.path.dirname(os.path.abspath(inspect.getfile(inspect.currentframe())))
parentdir = os.path.dirname(currentdir)
sys.path.insert(0,parentdir)

import simple_client

for i in range(10):
    os.rename(str(i), str(i + 1))
    print('{} -> {}'.format(i, i+1))
