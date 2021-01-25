Your first usable module
========================

* create your own module, name it "my_notifier"
* in the module have a manifests subfolder and in it a init.pp manifest.
* in that manifest, declare a class called "my_notifier" with a parameter called $message
* call notify with that message.
* add a folder called examples.
* in the examples folder add a file called "init.pp"
* in that file demostate how to use your class.
* run your module and show it works.

This should be the structure of your module:
 ── my_notifier
    ├── examples
    │   └── init.pp
    ├── manifests
    │   └── init.pp
    ├── metadata.json
    └── README.md
