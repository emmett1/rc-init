#!/bin/bash

RC_DIR=/etc
RCD_DIR=/etc/rc.d
RCCONF_DIR=/etc/conf.d

mkdir -pv ${DESTDIR}{${RC_DIR},${RCD_DIR},${RCCONF_DIR}}

install -m644 inittab ${DESTDIR}${RC_DIR}
install -m754 rc ${DESTDIR}${RC_DIR}
install -m754 rc.d/rc.{local,localnet,modules,mountfs,multi,setclock,shutdown,single,swap,sysklogd,udev,console} ${DESTDIR}${RCD_DIR}
install -m644 conf.d/{clock,modules,console} ${DESTDIR}${RCCONF_DIR}
