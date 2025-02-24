#!/bin/sh
export THEOS_DEVICE_IP=127.0.0.1
export THEOS_PLATFORM=ios
export SDKVERSION=18.2
export TARGET=iphone:clang:18.2:14.0

make clean
make package FINALPACKAGE=1

cd packages
rm -rf Payload
mkdir -p Payload/NotRecording.app
cp -r ../NotRecording.app/* Payload/NotRecording.app/ 2>/dev/null || true
cp ../Info.plist Payload/NotRecording.app/
cp ../ent.plist Payload/NotRecording.app/

zip -r NotRecording.ipa Payload

rm -rf Payload
DEB_FILE=$(ls *.deb)
TIPA_NAME="NotRecording.tipa"

mkdir -p temp
cd temp
ar x "../$DEB_FILE"
tar xf data.tar.*
cd ..

mkdir -p "NotRecording.app"
cp -r temp/Applications/NotRecording.app/* "NotRecording.app/" 2>/dev/null || true

zip -r "$TIPA_NAME" NotRecording.app/

rm -rf temp NotRecording.app