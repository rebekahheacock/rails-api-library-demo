# create
curl --include --request POST http://localhost:3000/loans \
  --header "Content-Type: application/json" \
  --data '{
    "loan": {
      "start_date": "2016-10-01",
      "end_date": "2016-11-01",
      "borrower_id": "3",
      "book_id": "5"
    }
  }'

# update
curl --include --request PATCH http://localhost:3000/loans/4 \
  --header "Content-Type: application/json" \
  --data '{
    "loan": {
      "start_date": "2016-10-01",
      "end_date": "2016-12-01",
      "borrower_id": "3",
      "book_id": "5"
    }
  }'

# index
curl --include --request GET http://localhost:3000/loans

# show
curl --include --request GET http://localhost:3000/loans/2

# delete
curl --include --request DELETE http://localhost:3000/loans/$ID