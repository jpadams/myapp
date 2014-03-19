myapp
=====
This module includes a custom fact for Windows called "curr_dir" which yields the directory where the puppet run was initiated.

That allows the management of files where the current working directory is not known ahead of time like if you have a drive letter that might be **d:** on one system and **f:** on another.

To use:
Put this module in the same parent directory where your **frontend** directory is located, change to that directory, and run `puppet apply -e "include myapp" --modulepath=.`

```
the_parent_directory/
├── frontend
│   ├── a
│   ├── b
│   ├── c    #example content of the frontend dir
│   └── d
├── myapp
    ├── README.md
    ├── lib
    │   └── facter
    │       └── curr_dir.rb
    └── manifests
        └── init.pp
```
Note on the facter fact:
It calls the 'cd' command to get the current directory, chomps off an end-of-line (if present), and flips the slashes to accomodate puppet forward slash syntax for file names.
