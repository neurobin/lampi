The **lampi** script can install the required packages automatically and setup LAMP for you. It can also be used to create custom sites (both http and https) on *localhost*.

**The installation is only for Ubuntu 14.04 and 16.04, other functionality (like setting up custom sites) is available for other versions as well as other Linux flavors**

#Install:
**lampi** is a single script. You can install it or run it from anywhere by specifying its path. This is how you can install it:

```sh
sudo chmod 755 lampi
sudo cp lampi /usr/local/bin
```

#Usage:

1. To install a basic LAMP installation with a default setup, run `sudo lampi -i`
2. To install a basic LAMP with SSL site (https) run `sudo lampi -i -s`
3. To simply setup a new site run `sudo lampi -n site-name -dr document-root`, where `site-name` is the desired name of the local site and `document-root` is the directory where you want to create this site.
4. Do the same as no. 3 but enable SSL (https too): `sudo lampi -n site-name -dr document-root -s`

#Examples:

After you have installed the LAMP stack with `sudo lampi -i` command:

To create a site named **example.com.local** in *~/example*, run the following:

```sh
sudo lampi -s -n example.com.local -dr ~/example
```
The above command will create a site (with both *http* and *https*) in *~/example* (*/home/user/example*) directory. The site will be accessible through the URLs:
http://example.com.local and https://example.com.local

**For https site you will have to add exception to your browser for the SSL certificate**

#Options:

```sh
lampi [-i, -nu, -s, -so, -n, -dr, -v, -h]
```

Option | Explanation
------ | -----------
`-i`, `--install` | install lamp
`-nu`, `--no-update` | do not run apt-get update
`-s`, `--ssl` | enable SSL 
`-so`, `--ssl-only` | enable SSL (https) site only 
`-n`, `--name` | server name (default localhost)
`-dr`, `--doc-root` | arbitrary document root (default /var/www/html)
`-v`, `--version` | show version info
 `-h`, `--help` | show help 

