import distributed

# The module of the function being altered
import time

time.time = distributed.generate_distributed(time.time)

