#!/bin/bash

# Colors
RD='\033[0;31m'
GR='\033[0;32m'
YL='\033[0;33m'
BL='\033[0;34m'
NC='\033[0m'

if [ -z "$INPUT_PHP_IMAGE" ]; then
  echo "::error::No PHP image provided"
  exit 1
fi

echo -e "${BL}Info:${NC} Running PHP MD with image: ${GR}$INPUT_PHP_IMAGE${NC}"
docker run \
    --platform linux/amd64 \
    -v "$PWD":/var/www \
    "$INPUT_PHP_IMAGE" \
    "/bin/bash" "-c" "./vendor/bin/phpmd app/ xml phpmd.xml --reportfile ${INPUT_PHPMD_REPORT_PATH} --ignore-violations-on-exit"
