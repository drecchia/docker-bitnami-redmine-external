chown -R mysql.mysql /opt/redmine/mysql/data
chown -R subversion.subversion /opt/redmine/subversion/tmp

cd /opt/redmine 
./ctlscript.sh start

tail -f /dev/null
