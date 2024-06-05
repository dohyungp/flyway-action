#!/bin/sh -l

set -e

/flyway/flyway migrate
result=$(/flyway/flyway info)

 echo "migration-status=$result" >> $GITHUB_OUTPUT