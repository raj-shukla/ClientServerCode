import os
import time

start = time.time()

os.system("./ScriptClient.sh")

end = time.time()

executionTime = end - start
print(executionTime)
