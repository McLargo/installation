# git hooks

This folder contains a list of git hooks that can be used to automate certain
tasks in a git repository.

## Adding git hook to push after commit

You can copy the post-commit file to the `.git/hooks` folder in your repository
to automatically push the branch after a commit.

Or you can run following command to create a symbolic link to the post-commit.

```console
ln -s $ORIGIN_PATH/installation/.githooks/post-commit $DESTINATION_PATH/.git/hooks/post-commit`
```
