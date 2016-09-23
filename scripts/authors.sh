# create
curl --include --request POST http://localhost:3000/authors \
  --header "Content-Type: application/json" \
  --data '{
    "author": {
      "given_name": "fake given name",
      "surname": "fake last name"
    }
  }'

# index
curl --include --request GET http://localhost:3000/authors

# show
curl --include --request GET http://localhost:3000/authors/2

# update
curl --include --request PATCH http://localhost:3000/authors/$ID \
  --header "Content-Type: application/json" \
  --data '{
    "author": {
      "given_name": "fake given name",
      "surname": "fake last name"
    }
  }'

# delete
curl --include --request DELETE http://localhost:3000/authors/$ID