---
to: <%= initiatedProjectPath %>/components-run/package.json
---
{
  "name": "components-run",
  "homepage": ".",
  "version": "0.0.0",
  "private": true,
  "scripts": {
    "start": "node ../node_modules/react-scripts/bin/react-scripts.js start",
    "build": "node ../node_modules/react-scripts/bin/react-scripts.js build",
    "test": "node ../node_modules/react-scripts/bin/react-scripts.js test",
    "eject": "node ../node_modules/react-scripts/bin/react-scripts.js eject"
  },
  "dependencies": {
    "react": "link:../node_modules/react",
    "react-dom": "link:../node_modules/react-dom",
    "react-scripts": "link:../node_modules/react-scripts",
    "<%= packageName %>": "link:.."
  },
  "devDependencies": {
    "@babel/plugin-syntax-object-rest-spread": "^7.8.3"
  },
  "eslintConfig": {
    "extends": "react-app"
  },
  "browserslist": [
    ">0.2%",
    "not dead",
    "not ie <= 11",
    "not op_mini all"
  ]
}
