import os
import replicated_rename

for i in range(10):
    os.rename(str(i), str(i + 1))
