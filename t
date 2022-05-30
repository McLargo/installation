[1mdiff --git a/.gitconfig b/.gitconfig[m
[1mindex eca891a4eca2a42d6d07142bf2753cc911d9efac..cb8d6d8dc20454d86d797087d441715f5ab26987 100644[m
[1m--- a/.gitconfig[m
[1m+++ b/.gitconfig[m
[36m@@ -1,6 +1,13 @@[m
 [user][m
     name = XXXXX XXXXX[m
     email = XXXXX@XXXXX.com[m
[32m+[m[32m# one includeIf per .gitconfig file to configure[m
[32m+[m[32m# hierarchy can be applied[m
[32m+[m[32m# https://alysivji.github.io/multiple-gitconfig-files.html[m
[32m+[m[32m[includeIf "gitdir:~/work/path/"][m
[32m+[m[32m    path = ~/path/.gitconfig[m
[32m+[m[32m[includeIf "gitdir:~/work/path/subpath/"][m
[32m+[m[32m    path = ~/subpath/.gitconfig[m
 [github][m
 [alias][m
 [core][m
[1mdiff --git a/README.md b/README.md[m
[1mindex 61e408149e52e60245eefe508c91627ce97d9673..1928f582ee20b20feacc16ec34e40da762c303f7 100644[m
[1m--- a/README.md[m
[1m+++ b/README.md[m
[36m@@ -13,6 +13,8 @@[m [mCreate personal and work folders on user path[m
 Clone my personal installation repo[m
 `git clone https://github.com/McLargo/installation.git`[m
 [m
[32m+[m[32mCreate file in `$HOME/.gitconfig`. Manually configure with includeIf conditions[m
[32m+[m
 ### Execute following script:[m
 [m
 `./fresh_installation.sh`[m
[36m@@ -29,7 +31,6 @@[m [mTo dump all settings:[m
 `dconf dump ~/ > saved_settings.dconf`[m
 [m
 [m
[31m-[m
 [Docker portainer](https://docs.portainer.io/v/ce-2.9/start/install/server/docker/linux)[m
 [m
 ### Post-checks:[m
[1mdiff --git a/Sublime/Packages/User/Preferences.sublime-settings b/Sublime/Packages/User/Preferences.sublime-settings[m
[1mindex dc2954129b56b3cef688c6c1f8fc7c0c27274b69..0857ec1adc17347746c4b358761406f03f320d8e 100644[m
[1m--- a/Sublime/Packages/User/Preferences.sublime-settings[m
[1m+++ b/Sublime/Packages/User/Preferences.sublime-settings[m
[36m@@ -5,7 +5,7 @@[m
 	],[m
 	"color_scheme": "Monokai.sublime-color-scheme",[m
 	"ensure_newline_at_eof_on_save": true,[m
[31m-	"font_size": 13,[m
[32m+[m	[32m"font_size": 15,[m
 	"highlight_line": true,[m
 	"highlight_modified_tabs": true,[m
 	"ignored_packages":[m
[1mdiff --git a/autostart/slack.desktop b/autostart/slack.desktop[m
[1mdeleted file mode 100644[m
[1mindex ec8d121c509334c7c4cd1de8a956b31cdf1964f1..0000000000000000000000000000000000000000[m
[1m--- a/autostart/slack.desktop[m
[1m+++ /dev/null[m
[36m@@ -1,11 +0,0 @@[m
[31m-[Desktop Entry][m
[31m-Name=Slack[m
[31m-StartupWMClass=Slack[m
[31m-Comment=Slack Desktop[m
[31m-GenericName=Slack Client for Linux[m
[31m-Exec=/usr/bin/slack %U[m
[31m-Icon=/usr/share/pixmaps/slack.png[m
[31m-Type=Application[m
[31m-StartupNotify=true[m
[31m-Categories=GNOME;GTK;Network;InstantMessaging;[m
[31m-MimeType=x-scheme-handler/slack;[m
[1mdiff --git a/autostart/slack.desktop b/autostart/slack.desktop[m
[1mnew file mode 120000[m
[1mindex 0000000000000000000000000000000000000000..0e1d10efce535023b9525c56e06de7a3a846a0d9[m
[1m--- /dev/null[m
[1m+++ b/autostart/slack.desktop[m
[36m@@ -0,0 +1 @@[m
[32m+[m[32m/usr/share/applications/slack.desktop[m
\ No newline at end of file[m
