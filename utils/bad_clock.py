import os
import time

if 'NODE_NAME' in os.environ:
    if os.getenv('NODE_NAME') == 'n1':
        time.time = lambda: 0
