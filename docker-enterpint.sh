#!/bin/bash
##
#
echo -e " Please Configure mariadb user and password in postfixadmin : "
read -p " Please enter domain name of mailservers " dname
read -p " Please enter mariadb username : " uname
read -p " Please enter mariadb database : " dbname
read -p " Please enter mariadb hostname : " hname

echo " username =  $uname, dbname = $dbname, hostname = $hname , domain = $dname"

if [[ $dname  ]]
then
  echo "domain name is $dname "
else
  echo "domain name is example.com"
fi
