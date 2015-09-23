chown -R mysql.mysql /opt/redmine/mysql/data

cd /opt/redmine 
./ctlscript.sh start

tail -f /dev/null
