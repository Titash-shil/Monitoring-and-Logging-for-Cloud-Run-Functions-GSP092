#!/bin/bash
BLACK_TEXT=$'\033[0;90m'
RED_TEXT=$'\033[0;91m'
GREEN_TEXT=$'\033[0;92m'
YELLOW_TEXT=$'\033[0;93m'
BLUE_TEXT=$'\033[0;94m'
MAGENTA_TEXT=$'\033[0;95m'
CYAN_TEXT=$'\033[0;96m'
WHITE_TEXT=$'\033[0;97m'
RESET_FORMAT=$'\033[0m'
BOLD_TEXT=$'\033[1m'
UNDERLINE_TEXT=$'\033[4m'

clear

curl -LO 'https://github.com/tsenart/vegeta/releases/download/v12.12.0/vegeta_12.12.0_linux_386.tar.gz'

tar -xvzf vegeta_12.12.0_linux_386.tar.gz

gcloud logging metrics create CloudFunctionLatency-Logs \
  --project=$DEVSHELL_PROJECT_ID \
  --description="awesome lab" \
  --log-filter='resource.type="cloud_run_revision" AND resource.labels.function_name="helloWorld"'

echo
echo "${CYAN_TEXT}${BOLD_TEXT} Subscribing to QwikLab Explorers ${RESET_FORMAT}"
echo "${BLUE_TEXT}${BOLD_TEXT}${UNDERLINE_TEXT}https://www.youtube.com/@qwiklabexplorers${RESET_FORMAT}"
echo
