#!/bin/sh
set -e

ls

if [[ -z "$GITHUB_TOKEN" ]]; then
	echo "The GITHUB_TOKEN is required."
	exit 1
fi

pycodestyle .
