# rsnapshot-tools
Some tooling for a centralized rsnapshot structure.

## Synopsis

Rsnapshot is very nice, but you have to check your backups manually, which is tiresome. Also, it does not scale very easy with the number of hosts. These rsnapshot-tools try to alleviate some of this problems.

## Installation

Copy content of script directory to /usr/local/sbin, example:
```
cp scripts/* /usr/local/sbin/
```

Modify those files constant section to customize `LOGPATH`,`CONFPATH` and `MAIL` - there is not yet a central configuration file.

Ensure every hosts you want to backup has a valid .conf file on `CONFPATH`, and a valid `conf.json` file is in `CONFPATH`. There is an example file in the `examples` directory.

Add a crontab to execute `rsnapshot-tools_backup_all` and `rsnapshot-tools_report_all` whenever you want backups or mails.
Ensure every hosts has a valid rsnapshot configuration. Errors will be sent to you via mail.
