#!/bin/sh -l

set -e

/flyway/flyway migrate
/flyway/flyway info | /action/workspace/md_converter.py >> $GITHUB_STEP_SUMMARY
