#!/bin/bash

RC_DIR=/etc
RCD_DIR=/etc/rc.d
RCCONF_DIR=/etc/conf.d

mkdir -pv ${DESTDIR}{${RC_DIR},${RCD_DIR},${RCCONF_DIR}}

install -m644 inittab ${DESTDIR}${RC_DIR}
install -m754 rc.{conf,local,multi,single,shutdown,sysinit} ${DESTDIR}${RC_DIR}
