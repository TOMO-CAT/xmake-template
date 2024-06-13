#!/bin/bash

# 允许 root 权限运行 xmake
export XMAKE_ROOT="y"
# 避免官方 xmake-repo 的非线性修改
export XMAKE_PROGRAM_DIR="/usr/local/share/xmake"
export XMAKE_MAIN_REPO="https://gitee.com/tboox/xmake-repo.git"
export XMAKE_BINARY_REPO="https://gitee.com/xmake-mirror/build-artifacts.git"

set -e

update_xmake() {
    LATEST_XMAKE_VERSION="v2.9.2+HEAD.1883b6b9f"
    XMAKE_COMMIT_VERSION="1883b6b9f69dddac3c19806014d135ebd9d18e67"
    source ~/.xmake/profile || true

    local_xmake=$(which xmake) || true
    if [ -f "${local_xmake}" ]; then
        echo "[update_xmake] local xmake path: ${local_xmake}"
        local_version=$(${local_xmake} --version | grep "xmake v" | awk '{print $2}')
        echo "[update_xmake] local xmake version: ${local_version}"

        if [[ "${local_version}" == "${LATEST_XMAKE_VERSION}"* ]]; then
            echo "[update_xmake] local xmake version is latest, skip update"
            return
        else
            echo "[update_xmake] going to update xmake version to ${LATEST_XMAKE_VERSION}"
        fi
    fi

    original_dir=$(pwd)
    xmake_install_dir=$(mktemp -d)
    cd ${xmake_install_dir}
    echo "[update_xmake] clone && install xmake in ${xmake_install_dir}"

    # install xmake from gitee
    git clone --recursive https://gitee.com/tboox/xmake.git || exit -1
    cd ${xmake_install_dir}/xmake  || exit -1
    git checkout "${XMAKE_COMMIT_VERSION}" || exit -1

    # install
    ./configure  || exit -1
    # ./get.sh __local__ 是安装到 ~/.local/xmake
    # ./scripts/get.sh __local__ __install_only__ || exit -1
    # source ~/.xmake/profile || exit -1
    make
    sudo make install PREFIX=/usr/local

    echo "install xmake successfully"
    xmake --version || exit -1

    # clear
    cd ${original_dir}
    rm -rf ${xmake_install_dir}
}

update_xmake
