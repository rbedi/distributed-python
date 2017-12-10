import etcd
import controller
import distributed
from collections import defaultdict
client = controller.controller

import time

time.time = distributed.generate_distributed(time.time)

