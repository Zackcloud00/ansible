pub=$(dig +short myip.opendns.com @resolver1.opendns.com)
if [ "$pub" != "$(cat ./newip)" ]; then
 echo $pub > ./newip
 curl -H "Content-Type: application/json" -d '{"username": "desktop", "content": "'$(cat ./newip)'"}'\
       https://discord.com/api/webhooks/......
  
fi
