import os
import datetime
from forbiddenfruit import curse

if 'BADCLOCK' in os.environ:
    def bad_now():
        return datetime.datetime.utcfromtimestamp(0)
    curse(datetime.datetime, "now", bad_now)
