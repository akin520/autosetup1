#!/bin/bash
#puppet client 

yum install -y gcc zlib zlib-devel
wget http://ftp.ruby-lang.org/pub/ruby/1.8/ruby-1.8.7-p370.tar.gz
tar xvf ruby-1.8.7-p370.tar.gz  
cd ruby-1.8.7-p370
./configure --enable-pthread
make
make install
cd ..

wget http://downloads.puppetlabs.com/facter/facter-1.6.13.tar.gz
tar xvf facter-1.6.13.tar.gz
cd facter-1.6.13
ruby install.rb
cd ..

wget http://downloads.puppetlabs.com/puppet/puppet-2.7.19.tar.gz
tar -zxvf puppet-2.7.19.tar.gz
cd puppet-2.7.19
ruby install.rb
cp conf/namespaceauth.conf /etc/puppet/
cp conf/redhat/puppet.conf  /etc/puppet/
cp conf/redhat/client.init /etc/init.d/puppet
chmod +x /etc/init.d/puppet 
chkconfig --add puppet
chkconfig puppet on
groupadd puppet
useradd -g puppet puppet
puppetd --mkusers
cd ..

mkdir -p /var/lib/puppet/rrd
chown puppet:puppet /var/lib/puppet/rrd
ln -s /usr/local/sbin/* /usr/sbin/

sleep 10
echo "puppet client install OK!!!!"