#!/bin/bash
#
# check_cert_validity.sh
#
 
if [ $# -eq 0 ];
then
   echo "$Usage: $0 <certificate_file absoluth path>" ;
   exit 1;
fi
 
FILE=$1
 
if [ ! -e $FILE ] ; then
   echo "Certificat file $1 does not exist."
   exit 2;
fi
 
EXPIRE_DATE=$(openssl x509 -in $FILE -noout -enddate | cut -f2 -d=);
EXPIRE_DATE_FORMAT=$(date --date="$EXPIRE_DATE" '+%Y%m%d')
TODAY_DATE_FORMAT=$(date '+%Y%m%d')
if [ $EXPIRE_DATE_FORMAT -ge $TODAY_DATE_FORMAT ]; then
    echo "Certificat file is already valid.";
    exit 0;
else
    echo "Certificat is expired.";
    exit 1;
fi
