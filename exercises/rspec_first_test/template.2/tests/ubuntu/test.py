#!/usr/bin/python3

import os
import subprocess

# next line is not nice...:(
os.chdir("/usr/share/puppet/modules/template")
# applying is also doubtful....
print("applying the manifest")
subprocess.check_call(
    ["puppet","apply","examples/init.pp"],
#    stdout=subprocess.DEVNULL,
#    stderr=subprocess.DEVNULL,
)
print("checking that the package exists")
subprocess.check_call(
    ["dpkg","-s","xbill"],
#    stdout=subprocess.DEVNULL,
#    stderr=subprocess.DEVNULL,
    )
print("checking that the config file exists")
assert os.path.exists("/etc/xbill.conf")
