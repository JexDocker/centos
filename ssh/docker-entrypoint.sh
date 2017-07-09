#!/bin/bash

set -e

if [ -z "$SSH_ROOT_PASSWORD" ]; then
                        echo >&2 'error: root password option is not specified '
                        echo >&2 '  You need to specify one of SSH_ROOT_PASSWORD'
                        exit 1

                fi
echo >&2 "root passwd: ${SSH_ROOT_PASSWORD}"
# 添加用户root，密码root，并且将此用户添加到sudoers里
#if [ "$SSH_ROOT_PASSWORD"='' ]; then
#  export SSH_ROOT_PASSWORD="root"
#  : "${SSH_ROOT_PASSWORD:=root}"
#fi
echo "root:${SSH_ROOT_PASSWORD}" | chpasswd
echo "root   ALL=(ALL)       ALL" >> /etc/sudoers

exec "$@"
