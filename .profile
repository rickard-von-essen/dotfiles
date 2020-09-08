for i in /usr/local/etc/profile.d/*.sh ; do
    if [ -r "$i" ]; then
        if [ "${-#*i}" != "$-" ]; then
            . "$i"
        else
            . "$i" >/dev/null
        fi
    fi
done

unset i

export QSYS_ROOTDIR="$HOME/local/intelFPGA_lite/20.1/quartus/sopc_builder/bin"
