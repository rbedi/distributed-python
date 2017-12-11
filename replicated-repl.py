import dist_input
import time_replicated
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
