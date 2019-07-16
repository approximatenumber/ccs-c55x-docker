#!/bin/sh

PROJECT=$1

if [ -z ${PROJECT} ]; then
    echo "Error! No project name set. \nSet project name. Example: evm_board/Debug"
    exit 1
fi

/opt/ccs/ccs/eclipse/ccstudio \
    -nosplash \
    -application org.eclipse.cdt.managedbuilder.core.headlessbuild \
    -import /src \
    -cleanBuild "$PROJECT" \
    -build "$PROJECT"
