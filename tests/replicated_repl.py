import os,sys,inspect

currentdir = os.path.dirname(os.path.abspath(inspect.getfile(inspect.currentframe())))
parentdir = os.path.dirname(currentdir)
sys.path.insert(0,parentdir)

import simple_client
import traceback

while True:
    try:
        line = input("> ")
        try:
            value = eval(line)
            print("=>", value)
        except SyntaxError:
            exec(line)
    except KeyboardInterrupt:
        break
    except Exception as e:
        traceback.print_exc()
