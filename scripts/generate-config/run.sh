#!/bin/bash
mkdir -p /data/app/config/tika
cp /config/tika-config.xml /data/app/config/tika

echo ""
echo "Add the following mounted volume on the Tika service in your docker-compose.yml"
echo ""
echo "services:"
echo "  tika:"
echo "    image: ..."
echo "    volumes:"
echo "      - ./config/tika:/config"
