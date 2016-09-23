# create
curl --include --request POST http://localhost:3000/books \
  --header "Content-Type: application/json" \
  --data '{
    "book": {
      "title": "fake title",
      "author_id": "3"
    }
  }'

# index
curl --include --request GET http://localhost:3000/books

# show
curl --include --request GET http://localhost:3000/books/2

# update
curl --include --request PATCH http://localhost:3000/books/$ID \
  --header "Content-Type: application/json" \
  --data '{
    "book": {
      "title": "new title",
      "author_id": "3"
    }
  }'

# delete
curl --include --request DELETE http://localhost:3000/books/$ID