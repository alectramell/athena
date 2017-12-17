#!/bin/bash

clear

git add README.md
git add *.sh
git add *.log

clear

git commit -m "athena"

clear

git push origin master

clear

echo "FILES UPDATED!" | pv -qL 10

sleep 0.5
