#!/bin/sh
. .env.secret-deploy
SRC=$PROJECT_ROOT/api/v1
DST=$PROJECT_ROOT/passepartout-ios/Passepartout/Resources/Web
rm -rf $DST && cp -pr $SRC $DST
