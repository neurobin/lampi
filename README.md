The lampi script can install the required packages automatically and setup LAMP for you. It can also be used to create custom sites (both http and https) on localhost.

#Install:
lampi is single script. You can install it or run it from anywhere by specifying its path. This is how you can install it:

```sh
sudo chmod 755 lampi
sudo cp lampi /usr/local/bin
```

#Usage:

1. To install a basic LAMP installation with a default setup, run `lampi -i`
2. To install a basic LAMP with SSL site (https) run `lampi -i -s`
3. To simply setup a new site run `lampi -n site-name -dr document-root`, where `site-name` is the desired name of the local site and `document-root` is the directory where you want to create this site.
4. Do the same as no. 3 but enable SSL (https too): `lampi -n site-name -dr document-root -s`

#Options:

```sh
lampi [-v, -h, -i, -dr, -s, -nu, -n]
```

Option | Explanation
------ | -----------
`-i`, `--install` | install lamp
`-nu`, `--no-update` ] | do not run apt-get update
`-s`, `--ssl` | enable SSL 
`-n`, `--name` | server name (default localhost)
`-dr`, `--doc-root` | arbitrary document root (default /var/www/html)
`-v`, `--version` | show version info
 `-h`, `--help` | show help 

