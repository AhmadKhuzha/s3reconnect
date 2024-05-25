#!/bin/bash


df_rows=$(df | wc -l) ## count mounted rows


if [ $df_rows -eq 8 ]
then

mv /var/www/storagetmp/products/* /var/www/storage/products/
mv /var/www/storagetmp/thumb/* /var/www/storage/products/thumb/


else

        /usr/bin/umount /var/www/web/storage
        /usr/bin/s3fs -o allow_other,use_path_request_style,url=******** ##use your S3 mount command here
fi
