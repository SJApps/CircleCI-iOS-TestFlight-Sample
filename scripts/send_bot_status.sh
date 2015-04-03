#!/bin/sh

PAYLOAD="{\"bot_name\": \"${XCS_BOT_NAME}\",\"bot_integration\": \"${XCS_INTEGRATION_NUMBER}\", \"bot_status\": \"${XCS_INTEGRATION_RESULT}\", \"test_failure_count\": ${XCS_TEST_FAILURE_COUNT}, \"build_error_count\": ${XCS_ERROR_COUNT}, \"warning_count\": ${XCS_WARNING_COUNT}, \"analyzer_warning_count\": ${XCS_ANALYZER_WARNING_COUNT}, \"integration_id\": \"${XCS_INTEGRATION_ID}\", \"tiny_id\": \"${XCS_BOT_TINY_ID}\", \"bot_id\": \"${XCS_BOT_ID}\", \"PR_sha\": \"$1\", \"PR_number\": $2}"
echo $PAYLOAD
curl -X POST -d "${PAYLOAD}" http://almobilexbot.ngrok.com/bot_status
