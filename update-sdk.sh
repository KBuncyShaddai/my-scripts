#!/bin/bash

# Usage : sh update-sdk.sh <git-branch-name>

branch=${1:-3.7}

pip3 cache list
pip3 cache purge
pip3 install pip -U
pip3 uninstall dkube -y
pip3 install git+https://github.com/oneconvergence/dkube.git@$branch --no-cache

