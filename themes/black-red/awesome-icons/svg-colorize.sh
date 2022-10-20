#/bin/sh
COLOR="#F8F8FF"
sed -i -E 's/fill\="[^"]+"//g; s/stroke\="[^"]+"//g' *.svg
sed -i "s/<path/<path fill=\"$COLOR\" stroke=\"$COLOR\"/g" *.svg

