


function acurl {
  if [ -z "$TOKEN" ]; then
    (echo Fetching token >&2)
    TOKEN=$(curl 'https://apis.alkemics.com/auth/v2/token' --data-binary '{"grant_type":"client_credentials","client_id":"'$CLIENT_ID'","client_secret":"'$CLIENT_SECRET'"}' | jq .access_token | sed s/\"//g)
    (echo Token acquired >&2)
  fi

  curl "$@" -H "Authorization: Bearer $TOKEN";
}
