pub=$(dig +short myip.opendns.com @resolver1.opendns.com)
cur=$(cat ./newip)
if [ "$pub" != "$cur" ]; then
 curl -H "Content-Type: application/json" -d '{"username": "desktop", "content": "'$pub'"}'\
       https://discord.com/api/webhooks/1033327216232243260/j8k4NinlyvrVi4_wDPQ17D_F8AyqAgiGUyO_Lc4i0KDPPbPQHWa6PHDWddx9X3PeVTDk
 echo $pub > ./newip 
fi
