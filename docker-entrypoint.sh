#!/bin/bash
set -e

# Fix permissions
mkdir -p "${NEXUS_DATA}"
chown -R nexus:nexus "${NEXUS_DATA}"

exec gosu nexus "$@"