rm allValues.json

curl -X GET "https://api.binance.com/api/v3/exchangeInfo" > response.json
jq -s "." response.json > allValues.json

rm response.json

echo "Consulta finalizada."
sleep 3

