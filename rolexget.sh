echo "GET query chaincode on peer1 of Org1"
echo
curl -s -X GET \
  "http://localhost:4000/channels/mychannel/chaincodes/mycc?peer=peer0.org1.rolex.com&fcn=query&args=%5B%22N5415205%22%5D" \
  -H "authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE1NDAzMTY5MDAsInVzZXJuYW1lIjoiSmltIiwib3JnTmFtZSI6Ik9yZzEiLCJpYXQiOjE1NDAyODA5MDB9.n-HxrRDUlRIXqFOU4RM4IKI8BcMXfgWqtxBdTqR-Tr4" \
  -H "content-type: application/json"
echo
echo
