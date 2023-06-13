#sudo kill -9 `sudo lsof -t -i:20`
docker run -d \
    --name ftp \
    -p 21:21 \
    -p 21000-21010:21000-21010 \
    -e USERS="misti|misti" \
    -e ADDRESS=localhost \
    delfer/alpine-ftp-server