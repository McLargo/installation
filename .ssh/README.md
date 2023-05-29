# .ssh configuration

The idea is to keep a simple `.ssh/config`, and include other .ssh config files,
either personal or from work into the file.

For more info, check
[here](https://superuser.com/questions/247564/is-there-a-way-for-one-ssh-config-file-to-include-another-one
)

## Steps

```bash
ln -s $PERSONAL/installation/.ssh/config $HOME/.ssh/config
ln -s $PERSONAL/installation/.ssh/personal.d $HOME/.ssh/personal.d
ln -s <work_ssh_path> ~/.ssh/work.d
```

The symlink for personal and work .ssh files do not belong here, must be
different repo.

Then, generate [new github key](https://github.com/settings/keys)

## Troubleshooting

There may be an error regarding a bad owner or permission on ssh config. For
that, either user is incorrect or the privileges of the file are not correct.
Run the following commands:

```bash
chmod 600 ~/.ssh/config.d/*
chown $USER ~/.ssh/config.d/*
```
