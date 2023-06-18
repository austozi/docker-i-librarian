#!/bin/bash -e
setup() {
	rm -rf /config/www
	mv -vf /i-librarian/public/ /config/www
	chown -R $PUID:911 /i-librarian/data
	sed -Ei "s|IL_CONFIG_PATH = '[^']*'|IL_CONFIG_PATH = '/i-librarian/config'|g" /config/www/paths.php
	sed -Ei "s|IL_PRIVATE_PATH = '[^']*'|IL_PRIVATE_PATH = '/i-librarian'|g" /config/www/paths.php
	sed -Ei "s|IL_DATA_PATH = '[^']*'|IL_DATA_PATH = '/i-librarian/data'|g" /config/www/paths.php
	sed -Ei "s|/?index.html?\s*||g" /config/nginx/site-confs/default.conf	
}
setup
