#!/usr/bin/env bash
cd _site
find . -type f -exec curl --ftp-create-dirs --ftp-ssl -T {} -u $DEPLOY_USERNAME:$DEPLOY_PASSWORD ftp://$DEPLOY_HOST$DEPLOY_REMOTEDIR{} \;
