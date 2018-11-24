Rowboat - the Robot Framework executor
--------

**What is rowboat**

Rowboat is a custom execution mode for robot framework mostly
designed for test development. It uses tmux and tmuxp to
show normal execution of robot framework as well as debug log
side by side. Similar to the RED plugin for Eclipse.

**Requirements**

Currently only linux systems are supported.
Might work on mac (untested)

You need to have:
- Robot Framework
- pip
- tmux


Clone or download this repository and run install.sh as sudo

Use "rowboat" command just as you would the normal robot command.

**Using rowboat**

When running rowboat commands all output will be stored in your home
folder under "rowboatexecutions". A folder will be created for each run.
Only six folders will be kept.