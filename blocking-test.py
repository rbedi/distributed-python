import time
import etcd
import sys

func_ctr = 0


old_time = time.time

def dist_time():

    global func_ctr
    func_ctr += 1

    try:
        value = old_time()
        client.write(str(func_ctr), value, prevExist=False)
    except etcd.EtcdAlreadyExist:
        value = client.read(str(func_ctr)).value

    return value

time.time = dist_time

if __name__ == "__main__":

    client = etcd.Client(port=int(sys.argv[1])) # default 2379
    print "Current time is {}".format(time.time())