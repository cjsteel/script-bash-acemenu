
#!/bin/bash
ls -1 "$HOME/bin/acemenu/help/" > "$HOME/bin/acemenu/directories.txt"
echo "# ACE Resources" > "$HOME/bin/acemenu/README.md"
echo " " >> "$HOME/bin/acemenu/README.md"
echo "## Local Resources" >> "$HOME/bin/acemenu/README.md"
echo " " >> "$HOME/bin/acemenu/README.md"
MENUITEMS=""
while IFS=$'
' read -r line || [[ -n "$line" ]]; do
#   MENUITEMS="$MENUITEM * [$line]($line/$line.md)\n"
   echo "* [$line](help/$line/index.html)" >> "$HOME/bin/acemenu/README.md"
#   echo $MENUITEMS
done < "$HOME/bin/acemenu/directories.txt"
echo " " >> "$HOME/bin/acemenu/README.md"
echo "## Additional Resources" >> "$HOME/bin/acemenu/README.md"
echo " " >> "$HOME/bin/acemenu/README.md"
echo "* [ACElab.ca](https://acelab.ca/)" >> "$HOME/bin/acemenu/README.md"
echo " " >> "$HOME/bin/acemenu/README.md"
cd $HOME/bin/acemenu
firefox --new-window $HOME/bin/acemenu/index.html &&
exit
#select menuitem in $MENUITEMS
#do
#  clear
#  cat "$HOME/bin/acemenu/{helpitems}.md"
#  break  # What happens if there is no 'break' here?
#done
#exit
