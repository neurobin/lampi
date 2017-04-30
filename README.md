The **lampi** script can install the required packages automatically and setup LAMP for you. It can also be used to create custom sites (both http and https) on *localhost*.

**The installation is only for Ubuntu, other functionality (like setting up custom sites) are available for other Linux flavors as well**

# Install:
**lampi** is a single script. You can install it or run it from anywhere by specifying its path. This is how you can install it:

```sh
sudo chmod +x install.sh
sudo ./install.sh
```
i.e just give the *install.sh* file execution permission and run it, or you can manually copy the **lampi** script to a standard bin (e.g */usr/local/bin*) directory and assign execution permission to it.

# Usage:

1. To install a basic LAMP installation with a default setup, run `sudo lampi -i`
2. To install a basic LAMP with SSL site (https) run `sudo lampi -i -s`
3. To simply setup a new site run `sudo lampi -n site-name -dr document-root`, where `site-name` is the desired name of the local site and `document-root` is the directory where you want to create this site.
4. Do the same as no. 3 but enable SSL (https too): `sudo lampi -n site-name -dr document-root -s`

# Examples:

To create a site named **example.com.local** in *~/example*, run the following:

```sh
sudo lampi -s -n example.com.local -dr ~/example
```
The above command will create a site (with both *http* and *https*) in *~/example* (*/home/user/example*) directory. The site will be accessible through the URLs:
http://example.com.local and https://example.com.local

**For https site you will have to add exception to your browser for the SSL certificate**

If you haven't installed the LAMP yet, then just add a `-i` flag to the above command:

```sh
sudo lampi -i -s -n example.com.local -dr ~/example
```

## Amazon AWS EC2

On amazon aws ec2 ubuntu server instance, you can setup your LAMP server pretty easily:

```bash
git clone https://github.com/neurobin/lampi
cd lampi
sudo ./install.sh
```
Now to install LAMP, run `sudo lampi -i`

```bash
sudo lampi -i -n mydomain.com -dr /var/www/mydomain.com -nip
```
The above will install LAMP stack and create a website named `mydomain.com` in */var/www/mydomain.com* (the `-nip` option is required if you want to expose the site publicly)


# Options:

```sh
lampi [-n, -dr, -i, -ri, -u, -s, -so, -rm, -rmd, -nfo, -nsr, -f -nu, -v, -h]
```

Option | Alt. option | Explanation
------ | ----------- | ----------
-n [name] | --name [name]                | server name (default localhost)
-dr [path] | --doc-root [path]           | arbitrary document root
-i | --install                           | install LAMP
-ri | --reinstall                        | reinstall LAMP
-u | --uninstall                         | uninstall LAMP
-s | --ssl                               | enable SSL
-rm [name] | --remove [name]             | remove a site
-rmd [name] | --remove-with-dir [name]   | remove a site and it's directory
-f | --force                             | force
-nu | --no-update                        | do not run apt-get update
-so | --ssl-only                         | configure for https site only 
-npa | --no-php-myadmin                  | no php my admin
-nfo | --no-info                         | do not create info.php
-nsr | --no-server-restart               | no server restart
-v | --version                           | show version info
-h | --help                              | show help 

# Notes:

1. All options to **lampi** are optional. If any option is not passed, it will be defaulted to some predefined value.
2. The `-u` flag uses `apt-get purge` i.e it will remove LAMP as well as its configuration.

# Tested On:

1. Xubuntu 14.04.4 LTS
2. Xubuntu 16.04 LTS
3. Ubuntu 16.10
4. Amazon AWS EC2 Ubuntu 16.04 server instance.
