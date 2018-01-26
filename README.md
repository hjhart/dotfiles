# README

## Setup!

```bash
git clone github.com/hjhart/dotfiles ~/.dotfiles
cd ~/.dotfiles
./bin/setup
```

## On ubuntu
```
 homebody in /boot 💔
 |16:37:44| → cat /etc/auto.master
#
# Sample auto.master file
# This is a 'master' automounter map and it has the following format:
# mount-point [map-type[,format]:]map [options]
# For details of the format look at auto.master(5).
#
#/misc  /etc/auto.misc
#
# NOTE: mounts done from a hosts map will be mounted with the
#       "nosuid" and "nodev" options unless the "suid" and "dev"
#       options are explicitly given.
#
#/net   -hosts
#
# Include /etc/auto.master.d/*.autofs
# The included files must conform to the format of this file.
#
+dir:/etc/auto.master.d
#
# Include central master map if it can be found using
# nsswitch sources.
#
# Note that if there are entries for /net or /misc (as
# above) in the included master map any keys that are the
# same will not be seen as the first read key seen takes
# precedence.
#
+auto.master

/nfs   /etc/auto.nfs
```


```
 |16:37:10| → cat /etc/auto.nfs
downloads nas.hjhart.com:/volume1/Downloads
audio nas.hjhart.com:/volume1/Audio
video nas.hjhart.com:/volume1/Video
```
