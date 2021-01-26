Your first usable module
========================

* create your own module, name it `notifier`
* in the module have a `manifests` subfolder and in it a `init.pp` manifest.
* in that manifest, declare a class called `my_notifier` with a parameter called `$message`
* call notify with that message.
* add a folder called `examples`.
* in the examples folder add a file called `init.pp`
* in that file demostrate how to use your class.
* add a `metadata.json` and fill in metadata about your module.
* run your module and show it works.

This should be the structure of your module:
 ── notifier
    ├── examples
    │   └── init.pp
    ├── manifests
    │   └── init.pp
    └── metadata.json
