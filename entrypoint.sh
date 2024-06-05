#!/bin/sh

set -e

flyway migrate
flyway info >> $GITHUB_OUTPUT