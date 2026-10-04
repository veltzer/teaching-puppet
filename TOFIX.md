# TOFIX

Findings from a code scan on 2026-10-04.

## High

- `docker/Dockerfile.agent:7` - `apt-get install puppet-agent` has no `-y`/`-qy`, so the non-interactive `docker build` aborts at apt's confirmation prompt (every other install line in the repo passes `-qy`); add `-qy`.
- `exercises/docker_test/better_solution/Dockerfile.centos:1` - a "centos" image built `FROM ubuntu:18.04` that runs `yum update` (`Dockerfile.centos:2`), which does not exist on Ubuntu, so the build fails at the first step; base it on a CentOS/Rocky image and use yum throughout, or delete it (its build line in `better_solution/build.sh:3` is already commented out).

## Medium

- `exercises/rspec_first_test/template/spec/classes/init_spec.rb:3` - the solution spec describes class `first_test`, but the module's class is `template` (`exercises/rspec_first_test/template/manifests/init.pp:45`); also `spec/spec_helper.rb` points `module_path` at `spec/fixtures/modules` (absent) and `manifest` at `spec/fixtures/manifests/init.pp` while the repo ships `site.pp`. The committed solution cannot pass; describe `template` and add the fixtures (or a `.fixtures.yml`).
- `docker/Dockerfile.server:8` - the comment "make it autosign" has no implementation, so the agent built by `docker/build.sh` (which runs `puppet agent -t` at build time, `docker/Dockerfile.agent:10`) has its certificate left unsigned; add `autosign = true` to the server's puppet.conf.
- `exercises/using_ruby_functions/README.md:7` - the per-user code directory is `~/.puppetlabs/etc/code/...`, not `~/.puppet/etc/code/...`; with this path puppet never finds the function.
- `exercises/using_ruby_functions/README.md:13` - the README defines the function `upcase` in `upcase.rb`, while the manifest it gives calls `upcaser` (`README.md:28`) and the committed solution is `upcaser.rb`; rename the function in the README to `upcaser`.
- `exercises/facter_add_fact_ruby_code/README.md:41` - the ```` ```puppet ```` fence is never closed, so the following "Apply the manifest" step and its shell block render as part of the code block; close the fence after line 44.

## Low

- `exercises/rspec_first_test/template/Gemfile:3` - version constraints (`>= 3.3`, `>= 1.2.0` at line 6, `>= 1.0.0` at line 7, `>= 1.7.0` at line 8) with no comment, in a manifest that has a Gemfile.lock; drop them and let the lockfile pin.
- `exercises/using_ruby_functions/ERROR:1` - empty tracked file with no purpose; delete it.
- `docker/build.sh:10` - leaves the background puppet server container running ("stop the server / TBD"); stop it with `docker stop` on a named container.
- `scripts/ubuntu_uninstall_from_puppet_repo.sh:3` - runs `dpkg --purge` without `sudo` (every sibling script uses sudo) and computes an unused `codename` (line 2); add sudo and drop the variable.
- `scripts/ubuntu_install.sh:2` - installs `puppet-master`, which no longer exists in Ubuntu (`apt-cache policy puppet-master` shows no candidate); the same copy lives in `exercises/server_and_client_5/ubuntu_install.sh`. Mark these as Ubuntu 18.04-only or update to `puppetserver`.
