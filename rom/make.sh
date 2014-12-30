#!/bin/bash

B2G_BUILD_DIR=/home/b2g/devel/repos/git/B2G
B2G_ROM_DIR=/home/b2g/devel/repos/git/docker-b2g/rom

cd $B2G_ROM_DIR/build
rsync -rvL $B2G_BUILD_DIR/out/target/product/hammerhead/system .
rsync -rvL $B2G_BUILD_DIR/out/target/product/hammerhead/data .
cp $B2G_BUILD_DIR/out/target/product/hammerhead/boot.img .
zip -r9 ../b2g.zip *
cd $B2G_ROM_DIR
java -jar $B2G_BUILD_DIR/prebuilts/sdk/tools/lib/signapk.jar \
          $B2G_BUILD_DIR/build/target/product/security/testkey.x509.pem \
          $B2G_BUILD_DIR/build/target/product/security/testkey.pk8 \
          $B2G_ROM_DIR/b2g.zip $B2G_ROM_DIR/signed_b2g.zip
