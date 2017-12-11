import sys
import select
import tty
import builtins
import etcd

from controller import controller

original_input = builtins.input

def call_key_generator(prefix):
    counter = 0
    while True:
        yield prefix + "_" + str(counter)
        counter += 1

input_call_key = call_key_generator("input")

def dist_input(prompt):
    sys.stdout.write(prompt)
    sys.stdout.flush()

    call_key = next(input_call_key)

    while True:
        (ready, _, _) = select.select([sys.stdin], [], [], 0)
        if ready:
            line = sys.stdin.readline()[:-1]
            try: controller.write(call_key, line, prevExist=False)
            except etcd.EtcdAlreadyExist: pass
            break
        else:
            try:
                value = controller.read(call_key).value
                sys.stdout.write(value)
                sys.stdout.write("\n")
                sys.stdout.flush()
                break
            except etcd.EtcdKeyNotFound:
                pass
    return controller.read(call_key).value

builtins.input = dist_input
