# React Js Library Generator

A CLI for [React Js Library Generator](https://github.com/react-libraryGenerator) which helps us to generate starter.

---

## Install CLI

    $ npm install -g reactjs-library-generator


## Generate react library project using CLI

    $ react-library generate

As a default, package name will be "reactjs-library-demo"

## Development

Go to the created starter project

    $ cd reactjs-library-demo

Install and start your library compilation

    $ yarn install
    $ yarn start

Install and start the react project that will preview the bundled library component

    $ cd components-run
    $ yarn install
    $ yarn start

your project will start a server on http://localhost:3000

## Adding a new component to your library

To add new component, put your component into "src/Components" and follows what existing code there.

## Deployment

You can deploy your library at any remote repository

    npm publish

Once it has deployed you can go install it as an npm library.

## Install

```bash
npm install --save reactjs-library-demo
```

## Usage

```jsx
import React, { Component } from 'react'

import MyComponent from 'reactjs-library-demo'
import 'reactjs-library-demo/dist/index.css'

class Example extends Component {
  render() {
    return <MyComponent />
  }
}
```

## Requirements

For development, you will only need Node.js and a node global package installed in your environement.

### Node
- #### Node installation on Windows

  Just go on [official Node.js website](https://nodejs.org/) and download the installer.
Also, be sure to have `git` available in your PATH, `npm` might need it (You can find git [here](https://git-scm.com/)).

- #### Node installation on Ubuntu

  You can install nodejs and npm easily with apt install, just run the following commands.

      $ sudo apt install nodejs
      $ sudo apt install npm

- #### Other Operating Systems
  You can find more information about the installation on the [official Node.js website](https://nodejs.org/) and the [official NPM website](https://npmjs.org/).

If the installation was successful, you should be able to run the following command.

    $ node --version
    v8.11.3

    $ npm --version
    6.1.0

If you need to update `npm`, you can make it using `npm`! Cool right? After running the following command, just open again the command line and be happy.

    $ npm install -g npm

---