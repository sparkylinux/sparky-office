#
# Regular cron jobs for the sparky-office package
#
0 4	* * *	root	[ -x /usr/bin/sparky-office_maintenance ] && /usr/bin/sparky-office_maintenance
