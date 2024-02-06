# .ssh configuration

The idea is to keep a simple `~/.ssh/config` and [include another .ssh config
files](https://superuser.com/questions/247564/is-there-a-way-for-one-ssh-config-file-to-include-another-one),
either personal or from work.

## Steps

```bash
ln -s $PERSONAL/installation/.ssh/config $HOME/.ssh/config
ln -s $PERSONAL/installation/.ssh/personal.d $HOME/.ssh/personal.d
mkdir <work_ssh_path>
ln -s <work_ssh_path> ~/.ssh/work.d
```

Once the structure is created, create the files inside `personal.d` and
`work.d`. Inside `personal.d` folder, there is a sample file to be used as a
template.

## Troubleshooting

There may be an error regarding a bad owner or permission on ssh config. For
that, either user is incorrect or the privileges of the file are not correct.
Run the following commands:

```bash
chmod 600 ~/.ssh/config.d/*
chown $USER ~/.ssh/config.d/*
```
