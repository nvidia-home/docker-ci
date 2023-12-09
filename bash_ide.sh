#! /usr/bin/bash
port="5000"
if [ "$1" != "" ]; then
    port=$1
fi
image="kevinhalpin/codeintel-bash-with-explainshell:latest"

docker run --rm -d --name bash-explainshell --rm -p 5000:$port $image

echo "Bash IDE running on port $port"
