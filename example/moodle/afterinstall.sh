#!/bin/bash
# make language files writable
cd /apps && chmod -R 755 

# make public folders writable
cd $X_APPLICATION_NAME && chmod 777 $X_APPLICATION_NAME

# Set config variables
sed -i -e 's/DATABASE/'"$X_DATABASE_NAME"'/g' /apps/moodle/config.php
sed -i -e 's/HOSTNAME/'"$X_DATABASE_URI"'/g' /apps/moodle/config.php
sed -i -e 's/USERNAME/'"$X_DATABASE_USER"'/g' /apps/moodle/config.php
sed -i -e 's/PASSWORD/'"$X_DATABASE_PASS"'/g' /apps/moodle/config.php
sed -i -e 's/BB_NAME/'"$X_APPLICATION_NAME"'/g' /apps/moodle/config.php
sed -i -e 's/BB_URL/'"$X_ELB_HOSTNAME"'/g' /apps/moodle/config.php
sed -i -e 's/DATA_ROOT/'"$X_WWW_PATH"'/g' /apps/moodle/config.php
sed -i -e 's/AD_NAME/'"$X_ADMIN_USERNAME"'/g' /apps/moodle/config.php
