#!/usr/bin/env bash

clear

proxy="http://172.16.65.54:3131"
url_root="http://clamavdb.c3sl.ufpr.br"
db1=main; db2="daily"; db3="bytecode"; db4="safebrowsing"
out_dir="/var/lib/clamav/"

cd "$out_dir" || return
export {ftp,http,https}_proxy=$proxy

# Comprobar si el comando 'wget' existe
if ! (which wget > /dev/null 2>&1); then
    echo -e "Comando 'wget' no existe, ejecute: 'apt install wget'\n"
    exit 1
fi

for d in $db1 $db2 $db3 $db4; do
    echo -e "\nDescargando: $url_root/$d.cvd"
    wget --timestamping "$url_root/$d.cvd"
done

echo FIN
exit 0