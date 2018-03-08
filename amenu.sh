
#!/bin/bash
#ls -1 "$HOME/bin/acemenu/help/" > "$HOME/bin/acemenu/directories.txt"
listdirs(){ set -- */; printf "%s\n" "${@%/}"; }
cd "$HOME/bin/acemenu/help/"
listdirs > "$HOME/bin/acemenu/help/directories.txt"
echo "# ACE Resources" > "$HOME/bin/acemenu/help/README.md"
echo " " >> "$HOME/bin/acemenu/help/README.md"
echo "## Local Resources" >> "$HOME/bin/acemenu/help/README.md"
echo " " >> "$HOME/bin/acemenu/help/README.md"
MENUITEMS=""
while IFS=$'
' read -r line || [[ -n "$line" ]]; do
#   MENUITEMS="$MENUITEM * [$line]($line/$line.md)\n"
   echo "* [$line]($line/index.html)" >> "$HOME/bin/acemenu/help/README.md"
#   echo $MENUITEMS
done < "$HOME/bin/acemenu/directories.txt"
echo " " >> "$HOME/bin/acemenu/help/README.md"
echo "## Additional Resources" >> "$HOME/bin/acemenu/help/README.md"
echo " " >> "$HOME/bin/acemenu/help/README.md"
echo "* [ACElab.ca](https://acelab.ca/)" >> "$HOME/bin/acemenu/help/README.md"
echo " " >> "$HOME/bin/acemenu/help/README.md"
cd $HOME/bin/acemenu
firefox --new-window $HOME/bin/acemenu/help/index.html &&
exit
