#!/bin/bash

set -e
set -o pipefail

/qrlft/qrlft sign --hs $1 $3 > $2