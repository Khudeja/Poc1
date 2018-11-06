echo "POST invoke chaincode on peers of Org1, Org2, Org3 and Org4"
echo
TRX_ID=$(curl -s -X POST \
  http://localhost:4000/channels/mychannel/chaincodes/mycc \
  -H "authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE1NDE1Mjc1NDEsInVzZXJuYW1lIjoiSmltIiwib3JnTmFtZSI6Ik9yZzEiLCJpYXQiOjE1NDE0OTE1NDF9.kbSh3RH5sl2OJMiNKHQjUIxmy0k1q9OceWeLFhIZR7c" \
  -H "content-type: application/json" \
  -d '{
	"fcn":"addProduct",
	"args":["N1245","B2234","M1434","Rolex Classic","02-12-2019","C2345", "$15200", "10gms Dial"]
}')
echo "Transaction ID is $TRX_ID"
echo
echo


