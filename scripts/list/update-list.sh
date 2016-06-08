curl --include --request PATCH http://localhost:3000/lists/2 \
--header "Authorization: Token token=BAhJIiU3NWIyZjZiZGNmOGY5OGJjMzU1MWVhMGZjNmQxMDJkNQY6BkVG--267fe26806f889af1e0eebefb21c026a9237d3b7" \
--header "Content-Type: application/json" \
  --data '{
    "list" : {
    "title" : "make the best to-do list",
    "priority" : true,
    "time_due" : "2016-06-21",
    "due_by" : "within one day"
    }
  }'
