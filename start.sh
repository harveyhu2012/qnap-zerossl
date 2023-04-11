#! /bin/sh

adduser admin -D
#echo 'admin:admin' | chpasswd

postconf -e mydomain=$DOMAIN
postconf -e myhostname=$DOMAIN
postconf -e home_mailbox=Mailbox

postmap /etc/postfix/aliases
#/usr/libexec/postfix/post-install meta_directory=/etc/postfix create-missing
exec /usr/lib/postfix/master
