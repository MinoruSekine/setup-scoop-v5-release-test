#!/bin/bash

# Test a parameter is semantic versioning or not.

if echo "$1" | grep -qE '^v(0|[1-9][0-9]*)\.(0|[1-9][0-9]*)\.(0|[1-9][0-9]*)$'; then
    echo "$1 is semantic versioning."
    exit 0
else
    echo "$1 is not semantic versioning." >&2
    exit 1
fi
