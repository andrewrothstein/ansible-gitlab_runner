#!/usr/bin/env sh
set -e
DIR=~/Downloads
MIRROR=https://gitlab-runner-downloads.s3.amazonaws.com
APP=gitlab-runner

dl()
{
    local ver=$1
    local os=$2
    local arch=$3
    local dotexe=${4:-}
    local platform="$os-$arch"
    local url=$MIRROR/v$ver/binaries/${APP}-${platform}${dotexe}
    local lfile=$DIR/${APP}-$ver-$platform${dotexe}

    if [ ! -e $lfile ];
    then
        curl -sSLf -o $lfile $url
    fi

    printf "    # %s\n" $url
    printf "    %s: sha256:%s\n" $platform $(sha256sum $lfile | awk '{print $1}')
}

dlver () {
    local ver=$1
    printf "  '%s':\n" $ver
    dl $ver linux amd64
    dl $ver linux 386
    dl $ver linux arm
    dl $ver linux arm64
    dl $ver darwin amd64
    dl $ver darwin arm64
    dl $ver windows amd64 .exe
}

dlver ${1:-17.9.1}
