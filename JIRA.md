## JIRA installation

Download bin from JIRA website (personal login)

```
sudo chmod +x ./atlassian-jira-software-8.12.0-x64.bin
sudo ./atlassian-jira-software-8.12.0-x64.bin
```

Select Custom Install (recommended for advanced users) [2, Enter]

Final output can look similar to:
```
Details on where Jira Software will be installed and the settings that will be used.
Installation Directory: /opt/atlassian/jira
Home Directory: /var/atlassian/application-data/jira
HTTP Port: 9900
RMI Port: 9905
Install as service: Yes
```


Now, go to localhost:9900 and follow default steps to set up your environment

JIRA services does not start automatically.
Run `sudo /opt/atlassian/jira/bin/start-jira.sh` to start
Run `sudo /opt/atlassian/jira/bin/stop-jira.sh` to stop
