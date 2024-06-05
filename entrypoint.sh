#!/bin/sh -l

set -e

flyway migrate
flyway info | ./md_converter.py >> $GITHUB_STEP_SUMMARY
