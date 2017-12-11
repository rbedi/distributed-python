from controller import controller
from statistics import median

# The module of the function being altered
import time

old_time = time.time

def call_key_generator(prefix):
    counter = 0
    while True:
        yield prefix + "_" + str(counter)
        counter += 1

time_call_key = call_key_generator("input")

NUM_CONSENSUS = 3

def new_time():
    call_key = next(time_call_key)
    value = old_time()
    controller.write(call_key, value, append=True)
    while len(list(controller.read(call_key, recursive=True).leaves)) < NUM_CONSENSUS: pass

    possible = sorted([(r.createdIndex, r.value) for r in controller.read(call_key, recursive=True).leaves])
    candidates = [p[1] for p in possible[:NUM_CONSENSUS]]
    return median(candidates)

time.time = new_time
