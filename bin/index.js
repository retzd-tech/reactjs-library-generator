#!/usr/bin/env node

const program = require('commander');

const { createNewProject, runProject } = require('../lib/services/projectService');

program
    .command('generate')
    .option('-n, --name <project-name>', 'Name of the project', 'react-library-project')
    .description('Create new react-library project')
    .action((options) => {
        createNewProject(options);
    });

program.parse(process.argv);