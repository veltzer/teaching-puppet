#!/usr/bin/python3

import sys
import os
import glob
import subprocess

if len(sys.argv)<=1:
    print("Usage: harness.py [module_name]")
    sys.exit(1)

module_to_test=sys.argv[1]

assert os.path.isdir(module_to_test)

absolute_path = os.path.abspath(module_to_test)
# print(module_to_test)
# print(absolute_path)

tests_to_run=glob.glob(module_to_test+"/tests/*/test.py")
folder_on_agent="/usr/share/puppet/modules"
for test_to_run in tests_to_run:
    platform = test_to_run.split("/")[2]
    image_name = "test_"+platform
    args=[
        "docker",
        "run",
        "-v",
        os.getcwd()+":"+folder_on_agent,
        "-it",
        image_name,
        os.path.join(folder_on_agent,test_to_run),
    ]
    # print(args)
    subprocess.check_call(args) 
