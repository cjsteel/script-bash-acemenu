# acemenu README.md

## Description

A sketch to create a local help menus on workstations that will be deployed via Ansible and updated using mr.

## Requirements

### git

```shell
apt update
apt install git
```

### mr

```shell
apt update
apt install myrepos
```

### pandoc

```shell
apt update
apt install pandoc
```

## Installation (manual)

### manual installation

Setup path

```shell
PATH="$HOME/bin:$HOME/.local/bin:$PATH"
```
osx

```shell
sudo vi /etc/paths
```

```shell
mkdir ~/bin/
cd ~/bin/
git clone git@github.com:cjsteel/script-bash-acemenu.git acemenu
# https://github.com/cjsteel/script-bash-acemenu.git

ln -s ~/bin/menu ~/bin/acemenu/menu.sh
ln -s ~/bin/amenu ~/bin/acemenu/amenu.sh

