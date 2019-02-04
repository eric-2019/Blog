#!/bin/sh
echo -e '\n************syncing public************\n\n'
# public
rm -rf ~/desktop/website/public/*
cd ~/desktop/website
hugo
cd ~/desktop/website/public
git add -A
git commit -m "public sync"
git push
echo -e '\n\n************public sync finished************\n'
echo -e '\n************uploading blog to github************\n\n'
# blog
cd ~/desktop/website
git add -A
git commit -m "blog update"
git push
echo -e '\n\n************uploading blog to github finished************\n'
