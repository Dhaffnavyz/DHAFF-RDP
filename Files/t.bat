#!/usr/bin/env bash

UNAME=$( command -v uname)

case $( "${UNAME}" | tr '[:upper:]' '[:lower:]') in
    linux*)
        ping 127.0.0.1 > null
    ;;
    darwin*)
        ping 127.0.0.1 > null
    ;;
    msys*|cygwin*|mingw*)
        ping 127.0.0.1 -t > null
    ;;
    nt|win*)
        ping 127.0.0.1 -t > null
    ;;
    *)
        printf 'unknown\${UNAME}'
    ;;
esac