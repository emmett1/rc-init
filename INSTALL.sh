#!/bin/bash

BIN_DIR=/usr/bin
RC_DIR=/etc
RCD_DIR=/etc/rc.d
RCCONF_DIR=/etc/conf.d

mkdir -pv ${DESTDIR}{${RC_DIR},${RCD_DIR},${RCCONF_DIR},${BIN_DIR}}

install -m755 rc-init ${DESTDIR}${BIN_DIR}
install -m644 inittab rc.conf ${DESTDIR}${RC_DIR}
install -m754 sysinit{,.local} ${DESTDIR}${RC_DIR}
