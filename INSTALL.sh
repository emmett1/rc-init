#!/bin/bash

RC_DIR=/etc
RCD_DIR=/etc/rc.d

mkdir -pv ${DESTDIR}{${RC_DIR},${RCD_DIR}}
install -m754 inittab rc.{conf,local,multi,single,shutdown,sysinit} ${DESTDIR}${RC_DIR}
