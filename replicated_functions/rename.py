import os
import distributed

os.rename = distributed.generate_distributed(os.rename)
