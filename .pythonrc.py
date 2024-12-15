import readline
import rlcompleter

# macOS uses libedit apparently, set vi mode
if 'libedit' in readline.__doc__:
    readline.parse_and_bind("bind ^I rl_complete")
    readline.parse_and_bind("bind -v")

