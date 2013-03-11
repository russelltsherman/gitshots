#!/bin/sh
cp ~/.gitshots/*.jpg content/images/
mogrify -resize 460 content/images/*.jpg

bundle exec rspec && bundle exec cucumber
if [ $? -eq 0 ]
then
  nanoc compile
  rsync -avz output/ -e ssh pi@pi:/var/www/vhosts/git.mug.im/
else
  echo "Tests did fail!"
  exit 1
fi
