#!/bin/bash
LIB_DIR="/workspacegba/devkitpro_libs"

mkdir -p $LIB_DIR

cp -r /opt/devkitpro/libgba $LIB_DIR
cp -r /opt/devkitpro/devkitARM $LIB_DIR
