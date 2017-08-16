# ~/bin/acemenu/help/display.txt

## ~/.bashrc or ~/.profile entry example:

To ensure that /opt/mni-display/bib/Display
is the default version of Display executed
on your system entry you have an entry 
similar to the following at the end of your
`~/.bashrc` or your `~/.profile` file but
not both.

```shell
# set user PATH to include /opt/mni-display/bin
if [ -d "/opt/mni-display/bin" ] ; then
    PATH="/opt/mni-display/bin:$PATH"
fi
```
