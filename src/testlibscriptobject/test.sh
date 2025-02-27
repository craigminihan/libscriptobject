#!/usr/bin/env bash

PARENT_PROCESS=`basename $_`
PYTHON=`type -p python27 || type -p python2.7 || type -p python-2.7 || type -p python`

CONFIG=Debug
if [[ "$1" != "" ]]; then
    CONFIG=$1
fi

# spawn make if we weren't invoked by it already
if [[ "$PARENT_PROCESS" != "make" && "$PARENT_PROCESS" != "gmake" ]]; then
    MAKE=`type -p gmake || type -p make`
    test "$CXX" != "" && MAKE+=' CXX="$CXX"'
    test "$CC" != "" && MAKE+=' CC="$CC"'
    ${MAKE} CONF=${CONFIG} || exit 5
fi

json &> /dev/null
if [ $? -eq 127 ]; then
    echo "Can't find 'json', you must install json_tools:"
    echo "$ pip install json_tools"
    exit 1
fi

pip install -r requirements.txt
if [ $? -ne 0 ]; then
    echo "Can't install deps from requirements.txt"
    exit 2
fi

mkdir -p test.out

for f in test*.json
do
    dist/$CONFIG/GNU-Linux-x86/testlibscriptobject $f > test.out/test.json
    json diff $f test.out/test.json > test.out/diff.out
    if [ ! `wc -l test.out/diff.out | grep -o '^[0-9]*'` == "2" ]; then
        echo "The file $f is different:"
        cat test.out/diff.out
        exit 3
    fi
done

for f in test*.json
do
    of=`basename $f .json`.msgpack
    $PYTHON json2msgpack.py $f test.out/${of}
    dist/$CONFIG/GNU-Linux-x86/testlibscriptobject test.out/${of} > test.out/test.json
    json diff $f test.out/test.json > test.out/diff.out
    if [ ! `wc -l test.out/diff.out | grep -o '^[0-9]*'` == "2" ]; then
        echo "The file $of is different:"
        cat test.out/diff.out
        exit 4
    fi
done
