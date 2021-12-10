const { stringUtils } = require('../utils');

const validateProjectName = (input) => {
    const isContainSpace = stringUtils.containsSpace(input);
    const isContainSymbol = stringUtils.containSymbol(input);
    if (isContainSpace || isContainSymbol) {
        return 'Please put a project name without space and any symbol'
    }
    return true;
}

const createProjectQuestions = [
    {
        type: 'input',
        name: 'packageName',
        message: 'Package name',
        default: 'react-library-demo',
        validate: validateProjectName
    },
    {
        type: 'input',
        name: 'initialVersion',
        message: 'Initial version',
        default: '0.0.1'
    },
    {
        type: 'input',
        name: 'repositoryUrl',
        message: 'Repository URL',
        default: 'https://github.com'
    },
];

module.exports = {
    createProjectQuestions,
    validateProjectName
}