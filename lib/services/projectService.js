const inquirer = require("inquirer");

const { questionFixtures } = require("../fixtures");

const createNewProject = (options) => {
    collectProjectInformation(options);
};

const generateStarterFiles = (packageName, generatorPayload) => {
    const shellgeneratorPath = `$(npm root -g)/reactjs-library-generator/lib/executables/generate-project-files.sh`;
    console.log(`Generating ${packageName} files`);
    require("child_process").
    exec(
        `packageName="${packageName}" generatorPayload="${generatorPayload}" sh ${shellgeneratorPath}`,
        (error, stdout, stderr) => {
            console.log(stdout);
            if (error !== null) {
                console.log(
                    "Failed to run the project, make sure you have already do 'npm install' first in your Astrophel project and run 'npm start' in your root project folder",
                    error
                );
            }
        });
};

const collectProjectInformation = async() => {
    const projectInformation = await inquirer.prompt(questionFixtures.createProjectQuestions);
    const {
        packageName,
        initialVersion,
        repositoryUrl
    } = projectInformation;

    const generatorPayload = `--packageName ${packageName} --initialVersion ${initialVersion} --repositoryUrl "${repositoryUrl}"`
    generateStarterFiles(packageName, generatorPayload);
};

module.exports = {
    createNewProject
};