myapp
=====
This module includes a custom fact for Windows called "curr_dir" which yields the directory where the puppet run was initiated.

That allows the management of files where the current working directory is not known ahead of time like if you have a drive letter that might be d: on one system and f: on another.

