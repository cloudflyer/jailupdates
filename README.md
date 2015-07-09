# jailupdates
This script generates a list of available updates for each FreeBSD jail in your environment

The list of updates can be emailed if the mailsettings are correctly setup in your environment,
 using the following command:
 
 jailupdates.sh | mail -s "Jail updates" scott@example.com

Then run jailupgrade.sh up apply the available updates on all jails.
