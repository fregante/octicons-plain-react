#! /bin/bash

set -e

if npm version "$(npm info @primer/octicons version)"; then
	npm publish
fi
