SYMBOL=BTCBRL

rm symbolValues.json

curl -X GET "https://api.binance.com/api/v3/exchangeInfo?symbol=$SYMBOL" > response.json
jq -s "." response.json > symbolValues.json

rm response.json

echo "Consulta finalizada."
sleep 3

