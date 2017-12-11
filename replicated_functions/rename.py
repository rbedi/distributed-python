import os
import distributed

os.rename = distributed.generate_distributed_locked(os.rename)
