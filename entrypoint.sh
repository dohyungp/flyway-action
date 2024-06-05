#!/bin/sh -l

set -e

/flyway/flyway migrate
/flyway/flyway info >> $GITHUB_STEP_SUMMARY
