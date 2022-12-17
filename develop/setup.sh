#!/bin/bash
git clone https://github.com/ShikemokuMK/tyranoscript

mkdir ./tyranoscript/data/others
mkdir ./tyranoscript/data/others/plugin
cp ./index.js ./tyranoscript/
cp -r ./circle_timer/ ./tyranoscript/data/others/plugin/
cp ./circle_timer/_SAMPLE.ks ./tyranoscript/data/scenario/

cp ./tyranoscript/data/scenario/first.ks ./tyranoscript/data/scenario/first.origin.ks
sed -e 's/@jump storage="title.ks"/@jump storage="..\/others\/plugin\/circle_timer\/_SAMPLE.ks"/g' ./tyranoscript/data/scenario/first.origin.ks > ./tyranoscript/data/scenario/first.ks

cd tyranoscript/
npm init -y
npm install --save express