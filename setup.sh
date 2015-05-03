#!/bin/sh

PROJECT_NAME="yourProjectName"

mkdir $HOME/androidProjects
cd $HOME/androidProjects

git clone git@github.com:sert-uw/AndroidBaseProject.git $PROJECT_NAME
cd $PROJECT_NAME
git remote remove origin

echo sdk.dir=$ANDROID_HOME > local.propeties

git add local.propeties
git commit -m "create local.propeties"

FILE_NAME="$HOME/androidProjects/${PROJECT_NAME}/app/src/main/res/values/strings.xml"
sed -i -e "s/AndroidBaseProject/${PROJECT_NAME}/g" $FILE_NAME

git add $FILE_NAME
git commit -m "change app name"

./gradlew build
