wget 'URL API' -O imported_passwordfile
DIFF=$(diff passwordfile imported_passwordfile)
if [ "$DIFF" != "" ]
then
    rm passwordfile
    mv imported_passwordfile passwordfile
    service mosquitto reload
fi
