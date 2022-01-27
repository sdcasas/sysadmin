Delete old Kernels
------------------


Para eliminar los kernels antiguos, primero hemos de saber que versión utilizamos, para ello abrimos la terminal y escribimos lo siguiente:
::

    uname -sr

Esto nos indicará la versión del kernel que usamos. Ahora hemos de mirar cuantos kernels tenemos instalados en nuestro Debian, para ello escribimos lo siguiente en la terminal:
::

    dpkg -l | grep linux-image | awk '{print$2}'

Esto nos mostrará todos los kernels instalados. Ahora hemos de elegir los kernels a eliminar y hacerlo de la manera siguiente:
::
    sudo apt remove --purge linux-image-X.XX-X-generic
    sudo update-grub2
    sudo reboot

referencia: https://www.linuxadictos.com/como-eliminar-kernels-antiguos-en-debian.html