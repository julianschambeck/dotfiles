import readline
import rlcompleter

# macOS uses libedit; detect and configure vi mode
if 'libedit' in readline.__doc__:
    readline.parse_and_bind("bind ^I rl_complete")
    readline.parse_and_bind("bind -v")  # Enable vi mode
else:
    readline.parse_and_bind("set editing-mode vi")
    readline.parse_and_bind("tab: complete")
