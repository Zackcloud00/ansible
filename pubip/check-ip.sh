pub=$(dig +short myip.opendns.com @resolver1.opendns.com)
cur=$(cat ./newip)
if [ "$pub" != "$cur" ]; then
 echo $pub > ./newip
 curl -H "Content-Type: application/json" -d '{"username": "desktop", "content": "'$pub'"}'\
       https://discord.com/api/webhooks/......
  
fi
