installedModulePath=$(npm root -g)/reactjs-library-generator
starterProjectPath=$installedModulePath/templates/react-library/
mkdir $packageName
cd $packageName
initiatedProjectPath=`pwd`

cd $(npm root -g)/reactjs-library-generator


npx hygen container-generator package-generator $generatorPayload --initiatedProjectPath=$initiatedProjectPath
npx hygen container-generator components-name-generator $generatorPayload --initiatedProjectPath=$initiatedProjectPath
npx hygen container-generator package-runner-generator --packageName=$packageName --initiatedProjectPath=$initiatedProjectPath

echo Copying starter project ...
cp -r $starterProjectPath $initiatedProjectPath
echo ${packageName} has been created successfully