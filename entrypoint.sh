#!/bin/sh -l

set -e

/flyway/flyway migrate
/flyway/flyway info | /flyway/md_converter >> $GITHUB_STEP_SUMMARY
