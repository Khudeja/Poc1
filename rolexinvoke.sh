echo "POST invoke chaincode on peers of Org1, Org2, Org3 and Org4"
echo
TRX_ID=$(curl -s -X POST \
  http://localhost:4000/channels/mychannel/chaincodes/mycc \
  -H "authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE1MzkyOTgzNTMsInVzZXJuYW1lIjoiSmltIiwib3JnTmFtZSI6Ik9yZzEiLCJpYXQiOjE1MzkyNjIzNTN9.SFMB8oFtSTLixWKkUIn6L4CDdGRA63aKFs4mgJ-d4tM" \
  -H "content-type: application/json" \
  -d '{
	"peers": ["peer0.org1.rolex.com","peer0.org2.dealer.com","peer0.org3.service.com","peer0.org4.insurer.com"],
	"fcn":"addProduct",
	"args":["N1238","B1234","M1234","Rolex Classic","02-12-2019","C12345678", "$15200", "10gms Dial"]
}')
echo "Transaction ID is $TRX_ID"
echo
echo

echo "GET query chaincode on peer1 of Org1"
echo
curl -s -X GET \
  "http://localhost:4000/channels/mychannel/chaincodes/mycc?peer=peer0.org1.rolex.com&fcn=query&args=%5B%22N1238%22%5D" \
  -H "authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE1MzkyOTgzNTMsInVzZXJuYW1lIjoiSmltIiwib3JnTmFtZSI6Ik9yZzEiLCJpYXQiOjE1MzkyNjIzNTN9.SFMB8oFtSTLixWKkUIn6L4CDdGRA63aKFs4mgJ-d4tM" \
  -H "content-type: application/json"
echo
echo

