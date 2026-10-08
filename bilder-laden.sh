#!/bin/bash
# Lädt alle Bilder der Website von Wix in den Ordner img/
# Ausführen im Projektordner:  bash bilder-laden.sh
set -e
cd "$(dirname "$0")"
mkdir -p img
FILES=(
  "682cf9_0adee3fa5c8a437e95dc9c0d1a316642~mv2.jpg"
  "682cf9_0afe47d489b748cd950c3bd33e6465ad~mv2.jpg"
  "682cf9_0eb2ff555ff94562b2e89e8e4d5799d5~mv2.jpg"
  "682cf9_32be9b2c903741129f3d67a14fed78ad~mv2.jpg"
  "682cf9_389c54f457f64fdcb301bb9c23f73c37~mv2.jpg"
  "682cf9_4e9a47525069494f970979f16b2820cd~mv2.jpg"
  "682cf9_70de9c997e1d4e1fae72e5ac23575371~mv2.jpg"
  "682cf9_77b1095bb0264b27ab63173e76938565~mv2.jpg"
  "682cf9_8a55e979cbd34083b90655f0d99c7c8b~mv2.jpg"
  "682cf9_8d370c2e090b4ab187b99520ff9ff4a8~mv2.jpg"
  "682cf9_96911a78da2748098ccf4cb99e3e59ff~mv2.jpg"
  "682cf9_aa909133e3ec4ba98525c62d7fd4a6d5~mv2.jpg"
  "682cf9_be2512907d4d4fb18dce71c48aadf06f~mv2.jpg"
  "682cf9_be65d1d88d984bbf8867cdd85ec2db22~mv2.jpg"
  "682cf9_c589aa0907bf459da14705128b6dd041~mv2.jpg"
  "682cf9_c6e3fc8e17ae47a199d3a3955666b845~mv2.jpg"
  "682cf9_cebe6de342ab4d0d80b95d34647f22f8~mv2.jpg"
  "682cf9_e9a21dc6117d4a43a4d7b49b4f8f5e63~mv2.jpg"
  "682cf9_feb55f3730d74ae1a580b016db5d923a~mv2.jpg"
  "f3bbf6_0dcfe61ecbd841e68cbe71016a3a922e~mv2.jpg"
  "f3bbf6_1d208a7918024156b50afa1eccb61e7c~mv2.jpg"
  "f3bbf6_299ac3a94f7a4b2f9ae334772a6c6a03~mv2.jpg"
  "f3bbf6_41fcb0ae36814d998b819aa0555763e8~mv2.jpg"
  "f3bbf6_45b41951485846049c1a614ebe450fc5~mv2.jpg"
  "f3bbf6_46dfaf4233d84148904d759c9bc65795~mv2.jpg"
  "f3bbf6_59ae6195919446aca31291a3df369d3c~mv2.jpg"
  "f3bbf6_6b9beb281a4b46e88265f6f9c2964c15~mv2.jpeg"
  "f3bbf6_6f9a0df94d834c2289f6347ba28f42a0~mv2.jpg"
  "f3bbf6_763d0ce0a5274141b0d40bc154b4e337~mv2.png"
  "f3bbf6_7b26c68c8f7b4359bab62ea3bf8a77f2~mv2.jpeg"
  "f3bbf6_8fc264a25305404ebe552712f83c1b39~mv2.jpg"
  "f3bbf6_9010317cd98f43fca39f03b23d06fc5e~mv2.jpg"
  "f3bbf6_910fd91976434d0b9a6bbcb8085ebfae~mv2.jpg"
  "f3bbf6_9d21ce30b73648709d539780fc930f1f~mv2.jpg"
  "f3bbf6_a6a2c5caa37a41168fe49786c586e7ae~mv2.jpg"
  "f3bbf6_c7f0b6ea7b9e457ea4938ce14cef0a60~mv2.jpg"
  "f3bbf6_c826ee3f00434b11898e6f292711e249~mv2.jpg"
  "f3bbf6_c9092e51fa7b4ac2a6257bd3fe755857~mv2.jpg"
  "f3bbf6_d44dc4fe195844f2ab710f3059589428~mv2.jpeg"
  "f3bbf6_e6e3a069e5374685a81d8424ac3f9c13~mv2.jpg"
  "f3bbf6_fa6616431f3b4f3a825a6368e3d39bf8~mv2.jpeg"
)
n=0
for f in "${FILES[@]}"; do
  out="img/${f/\~mv2/}"
  if [ -s "$out" ]; then continue; fi
  curl -sSfL "https://static.wixstatic.com/media/$f/v1/fit/w_2400,h_2400,q_85/$f" -o "$out" && n=$((n+1)) || echo "Fehler: $f"
done
echo "Fertig: $n neue Bilder in img/ ($(ls img | wc -l | tr -d " ") gesamt)"
