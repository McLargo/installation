### .ssh configuration

The idea is to keep a simple .ssh/config, and include other .ssh config files, either personal or from work to that file

More info, check [here](https://superuser.com/questions/247564/is-there-a-way-for-one-ssh-config-file-to-include-another-one
)

#### steps

```
ln -s $PERSONAL/installation/.ssh/config $HOME/.ssh/config
ln -s $PERSONAL/installation/.ssh/personal.d $HOME/.ssh/personal.d
ln -s <work_.ssh_path> ~/.ssh/work.d
```

(symlink for personal and work .ssh files does not belong here, must be different repo)

#### Throubleshooting

There may be an error regarding bad owner or permission on ssh config. For that, either user is incorrect or privilegies of file are not correct. Run following commands

```
chmod 600 ~/.ssh/config.d/*
chown $USER ~/.ssh/config.d/*
```
