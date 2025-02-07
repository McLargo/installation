# Cronjobs

Cronjobs are scheduled tasks that run in the background at regular intervals.

## Adding a script to cronjob

Before adding your custom scripts, `.cronjobs` folder must be a symlink to home
path.

```console
ln -s $PERSONAL/installation/.cronjobs $HOME
```

Inside this folder, you can create your `.sh` files. Give new files execution
privileges with `chmod +x <filename>.sh`.

To schedule a script, you need to edit the crontab file by running *crontab -e*.

Format for adding a new cronjob is:

```console
Minutes Hours Day Month DayOfWeek /path/to/script.sh
```

Use [cron guru](https://crontab.guru/) to get schedule expression.

### Example

See following example:

```console
25 17 * * 1-5 ~/.cronjobs/notification-off.sh
```

Cronjob executes `notification-off.sh` file at `25 17 * * 1-5`.
In a more human way, `At 17:25 on every day-of-week from Monday through Friday`.
