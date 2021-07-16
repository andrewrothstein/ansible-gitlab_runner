andrewrothstein.gitlab\_runner
======================================
![Build Status](https://github.com/andrewrothstein/ansible-gitlab_runner/actions/workflows/build.yml/badge.svg)

Installs and configures a [GitLab Runner](https://gitlab.com/gitlab-org/gitlab-runner).

Requirements
------------

See [meta/main.yml](meta/main.yml)

Role Variables
--------------

See [defaults/main.yml](defaults/main.yml)

Dependencies
------------

See [meta/main.yml](meta/main.yml)

Example Playbook
----------------

```yml
- hosts: servers
  roles:
    - andrewrothstein.gitlab_runner
```

License
-------

MIT

Author Information
------------------

Andrew Rothstein <andrew.rothstein@gmail.com>

Contributors
------------

Vishal Shah <vishal.shah@nyu.edu>
