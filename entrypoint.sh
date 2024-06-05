#!/bin/sh -l

set -e

/flyway/flyway migrate
/flyway/flyway info
# result=$(/flyway/flyway info)
echo "migration-status=success" >> $GITHUB_OUTPUT