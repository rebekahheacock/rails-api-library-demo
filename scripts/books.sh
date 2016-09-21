# create
curl --include --request POST http://localhost:3000/books \
  --header "Content-Type: application/json" \
  --data '{
    "book": {
      "title": "fake title",
      "author": "fake author"
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
      "author": "new author"
    }
  }'

# delete
curl --include --request DELETE http://localhost:3000/books/$ID