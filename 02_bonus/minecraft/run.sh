#!/bin/sh
BINDIR=$(dirname "$(readlink -fn "$0")")
cd "$BINDIR"

java -Xms1024M -Xmx1536M -jar minecraft_server.1.12.2.jar -o true