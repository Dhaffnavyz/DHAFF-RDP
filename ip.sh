NGIP=$( curl --silent http://127.0.0.1:4040/api/tunnels | jq '.tunnels[0].public_url' )
if [ -z "$NGIP" ]
then
    echo "Can't get NGROK tunnel, Maybe your previous VM still running: https://dashboard.ngrok.com/status/tunnels "
else
    NGIP=${NGIP//'"tcp:'}
    NGIP=${NGIP//'"'}
    NGIP="$( echo -e "$NGIP" | tr  '/' ' '  )"
    echo IP: $NGIP
fi