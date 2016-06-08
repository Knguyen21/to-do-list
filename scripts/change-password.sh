#!/bin/bash

curl --include --request PATCH http://localhost:3000/change-password/1 \
  --header "Authorization: Token token=BAhJIiU3NWIyZjZiZGNmOGY5OGJjMzU1MWVhMGZjNmQxMDJkNQY6BkVG--267fe26806f889af1e0eebefb21c026a9237d3b7" \
  --header "Content-Type: application/json" \
  --data '{
    "passwords": {
      "old": "an example password",
      "new": "super sekrit"
    }
  }'
