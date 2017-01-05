
Sinatra Development Box
====

Vagrant provisioning profile for deploying Ubuntu/Ruby/Sinatra machine on local host. 

This box is a basic sinatra server, supported by [thin](https://github.com/macournoyer/thin), **and it is not intended to be used in production.**

This automation script is an attempt at a fire-and-forget server setup script, after provisioning, you should be able to access your sinatra-dev-box at `http://sinatra-box.dev:8080`
 
Prequisits
----
+ Vagrant, download: [https://www.vagrantup.com/downloads.html](https://www.vagrantup.com/downloads.html)
+ VirtualBox(or alternative), download: [https://www.virtualbox.org/wiki/Downloads](https://www.virtualbox.org/wiki/Downloads)

Description
----
Sinatra Dev Box comes with the following tools:

+ ruby 2.3.2
+ sinatra framework 1.4.7 
+ rbenv ruby manager
+ ruby bundler
+ postgresql database
+ thin server
+ ansible


Config
------
It's possible to change database credentials and db name by editing corresponding vars in `db_setup.yaml`. Db setup file is an ansible playbook so edit carefully.

DB default vars
```
vars:
  db_name: sinatra_db
  db_user: sinatra_dev
  db_user_password: developer
```

For setting up Vagrant specific settings refer to `Vagrantfile`

```
node.vm.box = "ubuntu/trusty64" # sets the version of OS runing on the box
node.vm.network :private_network, ip: "192.168.100.101" # append custom local ip to vagrant box
node.vm.hostname = 'sinatra-box.dev' # set box hostname
node.hostmanager.aliases = %w(www.sinatra-box.dev sinatra-box.dev)	# set box local web address
```

Installation
-----

+ clone or downlod the repository
+ navigate to project folder
+ run `vagrant up`, get some coffee... this will take a long time. Virtual machine will provision (setup) itself
+ run `vagrant status` to verify virtual machine status
+ visit the server on local web adress set in `Vagrantfile`, eg `http://www.sinatra-box.dev:8080`

After the vagrant box is provisioned thin server will start and serve your sinatra app on port `8080`


Troubleshoot
----
+ if you run the provision for the first time, vagrant may ask you for your root password
+ If you run the provision for the first time it may take a very long time
+ If server stops responding or stops function run `vagrant provision`to reset it 
+ thin server is run on each `vagrant up`