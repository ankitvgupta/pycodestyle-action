#!/bin/sh
set -e

ls

if [[ -z "$GITHUB_TOKEN" ]]; then
	echo "The GITHUB_TOKEN is required."
	exit 1
fi

set +e
OUTPUT=$(pycodestyle .)
SUCCESS=$?
echo $OUTPUT
set -e

# If there were errors as part of linting, post a comment. Else, do nothing.
if [ $SUCCESS -ne 0 ]; then
  echo "Making a comment"
  PAYLOAD=$(echo '{}' | jq --arg body "$OUTPUT" '.body = $body')
  COMMENTS_URL=$(cat /github/workflow/event.json | jq -r .pull_request.comments_url)
  echo $PAYLOAD
  echo $COMMENTS_URL
  #curl -s -S -H "Authorization: token $GITHUB_TOKEN" --header "Content-Type: application/json" --data "$PAYLOAD" "$COMMENTS_URL" > /dev/null
else
  echo "There were not linting issues"
fi
exit $SUCCESS

