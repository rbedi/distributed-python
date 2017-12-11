from controller import controller

# The module of the function being altered
import time

old_time = time.time

def call_key_generator(prefix):
    counter = 0
    while True:
        yield prefix + "_" + str(counter)
        counter += 1

time_call_key = call_key_generator("input")

def new_time():
    call_key = next(time_call_key)
    value = old_time()
    controller.write(call_key, value, append=True)

time.time = new_time
