# create cronjob for ssl-expire script
CRON='0 9 * * 1 /opt/qutic/bin/ssl-expire.sh
15 * * * * /opt/qutic/bin/check-log /var/adm/messages "(znapzend.*ERROR)"
'
(crontab -l 2>/dev/null || true; echo "$CRON" ) | sort | uniq | crontab
