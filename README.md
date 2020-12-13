# README
rails server

lsof -wni tcp:3000
kill -9 <pid>

curl -X POST http://localhost:3000/login -d "email=jdoe@jdoe.com&password=testing123"

curl -X GET http://localhost:3000/auctions -H "Authorization: eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE2MDcyNzkzNjB9.XN6uwhnDpjQcqfa_h35qxWvNiYUJQ3NHgex2RaXjr-A"
