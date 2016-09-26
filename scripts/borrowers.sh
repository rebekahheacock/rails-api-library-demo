# create
curl --include --request POST http://localhost:3000/borrowers \
  --header "Content-Type: application/json" \
  --data '{
    "borrower": {
      "given_name": "Rebekah",
      "surname": "Heacock Jones"
    }
  }'

# index
curl --include --request GET http://localhost:3000/borrowers

# show
curl --include --request GET http://localhost:3000/borrowers/2

# update
curl --include --request PATCH http://localhost:3000/borrowers/$ID \
  --header "Content-Type: application/json" \
  --data '{
    "borrower": {
      "given_name": "Rebekah",
      "surname": "Heacock Jones"
    }
  }'

# delete
curl --include --request DELETE http://localhost:3000/borrowers/$ID