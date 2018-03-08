#!/bin/bash

# adapted from
#
#    http://tldp.org/LDP/abs/html/testbranch.html#CASECMD
#    Example 11-30. Creating menus using select
#
# license
#
#    GNU Free Documentation License
#
# Requirements:
#
#    items.txt
#
#    A text file called menuitems.txt should be place in the same directory as this file.
#    Place a single menu description on each line.
#
#    For example:
#
#      about
#      contributing
#      some_other_item
#
#    PATH
#
#    The PATH env should include ~/bin. For Ubuntu that would be in ~/.bashrc, for
#    others perhaps ~/.profile
#
# Usage:
#
#    Start a terminal session and enter:
#
#        menu
clear
PS3='Select the number and then press return: ' # Sets the prompt string.
                                       # Otherwise it defaults to #? .
MENUITEMS=""
while IFS=$'
' read -r line || [[ -n "$line" ]]; do
   MENUITEMS="$MENUITEMS $line"
done < "$HOME/bin/acemenu/help/directories.txt"
#done < "$HOME/bin/acemenu/items.txt"
echo

select menuitem in $MENUITEMS
do
  clear
  pandoc -f markdown -t plain --wrap=none $HOME/bin/acemenu/help/${menuitem}/README.md -o $HOME/bin/acemenu/help/${menuitem}/README.txt
  cat "$HOME/bin/acemenu/help/${menuitem}/README.txt"
  break  # What happens if there is no 'break' here?
done
exit

