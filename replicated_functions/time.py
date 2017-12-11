import distributed

# The module of the function being altered
import time

last_time = -1
epsilon = 0.01

dist_time = distributed.generate_distributed(time.time)

def time_wrapper():
    new_time = dist_time()
    global last_time
    if last_time != -1 or new_time > last_time:
        last_time = new_time
        return new_time
    else:
        last_time = last_time + epsilon
        return last_time + epsilon

time.time = time_wrapper
