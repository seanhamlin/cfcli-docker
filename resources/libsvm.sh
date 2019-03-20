#!/usr/bin/env sh

set -eu

function build_libsvm() {
    local LIBSVM_VERSION=323

    curl -sL https://github.com/cjlin1/libsvm/archive/v${LIBSVM_VERSION}.tar.gz | tar -zxf - -C /tmp
    cd /tmp/libsvm-${LIBSVM_VERSION}
    make all lib

    mkdir -p /usr/local/include/libsvm
    cp *.h /usr/local/include/libsvm
    cp svm-train svm-predict svm-scale /usr/local/bin/
    cp libsvm.so.2 /usr/local/lib
    ln -sf /usr/local/lib/libsvm.so.2 /usr/local/lib/libsvm.so

    cd ..
    rm -rf /tmp/libsvm-${LIBSVM_VERSION}

    mkdir -p /bin/libsvm/
    ln -s /usr/local/bin/svm-train /bin/libsvm/svm-train
    ln -s /usr/local/bin/svm-predict /bin/libsvm/svm-predict
    ln -s /usr/local/bin/svm-scale /bin/libsvm/svm-scale
}

build_libsvm
