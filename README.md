# Script para descargar las actualizaciones de clamav

Se descargará desde: `http://clamavdb.c3sl.ufpr.br`

El `c3sl `esCentro de Computación Científica y Software Libre de la ‘Universidad Federal de Paraná’ en Brasil.

El script descargara los siguientes archivo, y lo guardará en `/var/lib/clamav`

* main.cvd
* daily.cvd
* bytecode.cvd
* safebrowsing.cvd

# Instalación

```bash
git clone https://github.com/roilanbr/up-clamav.git
mkdir /opt/scripts
cp up-clamav/up-clamav.sh /opt/scripts/
```

# Crear tarea programada

Editar el archivo `crontab` y agregar lo siguiente al final:

    * 00    * * *   root    bash /opt/scripts//up-clamav.sh



