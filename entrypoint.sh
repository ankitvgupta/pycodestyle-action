#!/bin/bash
set -e

#if [[ -z "$GITHUB_TOKEN" ]]; then
#	echo "The GITHUB_TOKEN is required."
#	exit 1
#fi

cd $GITHUB_WORKSPACE


pycodestyle .
