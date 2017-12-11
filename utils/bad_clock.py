import os
import time

if 'BADCLOCK' in os.environ:
    time.time = lambda: 0
