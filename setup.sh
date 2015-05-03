#!/bin/sh

PROJECT_NAME="yourProjectName"

mkdir $HOME/androidProjects
cd $HOME/androidProjects

git clone git@github.com:sert-uw/AndroidBaseProject.git $PROJECT_NAME
cd $PROJECT_NAME

echo sdk.dir=$ANDROID_HOME > local.propeties

sed -e s/AndroidBaseProject/${PROJECT_NAME}/ $HOME/androidProjects/${PROJECT_NAME}/app/src/main/res/values/strings.xml

./gradlew build
