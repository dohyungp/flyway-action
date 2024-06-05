#!/bin/sh -l

set -e

/flyway/flyway migrate
/flyway/flyway info | python3 md_converter.py >> $GITHUB_STEP_SUMMARY
