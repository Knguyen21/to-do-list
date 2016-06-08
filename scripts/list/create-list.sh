curl --silent --request POST http://localhost:3000/lists \
--header "Authorization: Token token=BAhJIiU3NWIyZjZiZGNmOGY5OGJjMzU1MWVhMGZjNmQxMDJkNQY6BkVG--267fe26806f889af1e0eebefb21c026a9237d3b7" \
--header "Content-Type: application/json" \
  --data '{
    "list" : {
    "title" : "make to-do list",
    "priority" : false,
    "time_due" : "2016-03-21",
    "due_by" : "one week"
    }
  }' | jsonlint
