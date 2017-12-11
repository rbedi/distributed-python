import os
import replicated_rename

for i in range(10):
    print("Renaming %s -> %s..." % (i, i + 1))
    os.rename(str(i), str(i + 1))

print("Rename chain success...")
