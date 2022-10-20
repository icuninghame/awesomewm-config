#/bin/sh
COLOR="#23D5D3"
sed -i -E 's/fill\="[^"]+"//g; s/stroke\="[^"]+"//g' *.svg
sed -i "s/<path/<path fill=\"$COLOR\" stroke=\"$COLOR\"/g" *.svg

