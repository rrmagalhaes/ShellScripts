#TIMESTAMP=$(date +"%s")
curl -X GET "https://testnet.binance.vision/api/v3/time" | jq ".serverTime">time.json
read TIMESTAMP<time.json
echo $TIMESTAMP

echo -n "symbol=BTCUSDT&side=BUY&type=LIMIT&timeInForce=GTCquantity=1&price=1&recvWindow=5000&timestamp=$TIMESTAMP" | openssl dgst -sha256 -hmac "xj1RFQiLsqt95f80VNz9G9LaKOG7U4tFbd6LyURDsF9u69cCn3pYNzffeQjQwJrd" >sinagture.txt
read SIGNATURE<sinagture.txt
SIGNATURE=${SIGNATURE:8}

echo | curl -H "X-MBX-APIKEY: cYWo1s5RwXs0nIRSYGQL01eMNURUkvnSV7vQEJAKeYuDX0fe316Fu3TTceAL16S4" -X POST "https://testnet.binance.vision/api/v3/order?symbol=BTCUSDT&side=BUY&type=LIMIT&timeInForce=GTC" -d "quantity=1&price=1&recvWindow=5000&timestamp=$TIMESTAMP&signature=$SIGNATURE" >response.json


read -p "PAUSE"

