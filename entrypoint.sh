#!/bin/sh -l

set -e

flyway migrate
flyway info >> $GITHUB_OUTPUT