#!/bin/sh
if [ ! -f UUID ]; then
  UUID="53b0d991-46ef-445e-91ec-7d83ec80fa5f"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

