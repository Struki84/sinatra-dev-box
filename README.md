
Vagrant Ruby Box
====

Vagrant provisioning profile for deploying Ubuntu/Ruby machine on local or remote vagrant host. 

Prequisits
----

+ Vagrant
+ VirtualBox (or other type of vritualisation engine)
+ 

Description
----
Vagrant Ruby Box comes with the following tools:

+ rbenv ruby manager
+ postgresql database
+ ngnix server 
+ thin ruby server
+ ruby bundler

Config
------
Before creating your vagrant box, you can setup some basic details in the `config.yaml`

```
	# RBENV
	rbenv_root: /usr/local/rbenv
	ruby_version: 2.0.0-p353

	#NGINX
	config_file_path: files/nginx.conf

	#DB SETUP
	db_name: ruby_server_db
	db_user: ruby_developer
	db_user_password: developer
```

Setup
-----

+ clone or downlod the repository
+ `cd` to project folder in terminal
+ run `vagrant up`, get some coffee...
+ run `vagrant status` to verify virtual machine status
+ login to your ruby box, run `vagrant ssh`


Troubleshoot
----
+ If you run the provision for the forst time, or installing new version of ruby, it may take a very long time
+ You can always run vagrant `vagrant provision` to reset the server