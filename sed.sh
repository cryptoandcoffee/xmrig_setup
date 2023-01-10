wget https://github.com/cryptoandcoffee/xmrig_setup/raw/master/xmrig
wget -O config.json https://raw.githubusercontent.com/cryptoandcoffee/xmrig_setup/master/config.json.bak

THREAD_HINT=50
WALLET=
URL=

sed -i 's/"randomx-mode": *[^,]*,/"randomx-mode": "auto",/' config.json
sed -i 's/"1gb-pages": *[^,]*,/"1gb-pages": true,/' config.json
sed -i 's/"huge-pages": *[^,]*,/"huge-pages": true,/' config.json
sed -i 's/"huge-pages-jit": *[^,]*,/"huge-pages-jit": true,/' config.json
sed -i 's/"cn\/0": *[^,]*,/"cn\/0": true,/' config.json
sed -i 's/"cn-lite\/0": *[^,]*/"cn-lite\/0": true/' config.json
sed -i 's/"astrobwt-avx2": *[^,]*,/"astrobwt-avx2": true,/' config.json
sed -i 's/"hw-aes": *[^,]*,/"hw-aes": true,/' config.json
sed -i 's/"donate-level": *[^,]*,/"donate-level": 0,/' config.json
sed -i 's/"donate-over-proxy": *[^,]*,/"donate-over-proxy": 0,/' config.json
sed -i 's/"pass": *[^,]*,/"pass": "'"$(hostname)"'",/' config.json
sed -i 's/"user": *[^,]*,/"user": "'"$WALLET"'",/' config.json
sed -i 's/"max-threads-hint": *[^,]*,/"max-threads-hint": '$THREAD_HINT',/' config.json
sed -i 's/"rig-id": *[^,]*,/"rig-id": "'"$(hostname)"'",/' config.json

sed -i 's/"algo": *[^,]*,/"algo": "rx\/0",/' config.json
sed -i 's/"url": *[^,]*,/"url": "'"$URL"'",/' config.json
sed -i 's/"rebench-algo": *[^,]*,/"rebench-algo": false,/' config.json
