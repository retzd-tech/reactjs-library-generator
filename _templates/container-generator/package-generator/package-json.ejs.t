---
to: <%= initiatedProjectPath %>/package.json
---
{
  "name": "<%= packageName %>",
  "version": "<%= initialVersion %>",
  "repository": "<%= repositoryUrl %>",
  "description": "React Js Library Demo",
  "author": "React Js Library Generator",
  "license": "MIT",
  "main": "dist/index.js",
  "module": "dist/index.modern.js",
  "source": "src/index.js",
  "engines": {
    "node": ">=10"
  },
  "scripts": {
    "build": "microbundle-crl --no-compress --format modern,cjs",
    "start": "microbundle-crl watch --no-compress --format modern,cjs",
    "prepare": "run-s build",
    "test": "run-s test:unit test:lint test:build",
    "test:build": "run-s build",
    "test:lint": "eslint .",
    "test:unit": "cross-env CI=1 react-scripts test --env=jsdom --coverage",
    "test:snapshot": "cross-env CI=1 react-scripts test --env=jsdom --updateSnapshot",
    "test:watch": "react-scripts test --env=jsdom",
    "predeploy": "cd components-run && yarn install && yarn run build",
    "deploy": "gh-pages -d components-run/build"
  },
  "peerDependencies": {
    "react": "^16.0.0"
  },
  "devDependencies": {
    "@testing-library/jest-dom": "^5.16.1",
    "@testing-library/react": "^12.1.2",
    "babel-eslint": "^10.0.3",
    "cross-env": "^7.0.2",
    "eslint": "^6.8.0",
    "eslint-config-prettier": "^6.7.0",
    "eslint-config-standard": "^14.1.0",
    "eslint-config-standard-react": "^9.2.0",
    "eslint-plugin-import": "^2.18.2",
    "eslint-plugin-node": "^11.0.0",
    "eslint-plugin-prettier": "^3.1.1",
    "eslint-plugin-promise": "^4.2.1",
    "eslint-plugin-react": "^7.17.0",
    "eslint-plugin-standard": "^4.0.1",
    "gh-pages": "^2.2.0",
    "microbundle-crl": "^0.13.10",
    "npm-run-all": "^4.1.5",
    "prettier": "^2.0.4",
    "react": "^16.13.1",
    "react-dom": "^16.13.1",
    "react-scripts": "^3.4.1",
    "react-test-renderer": "^17.0.2"
  },
  "files": [
    "dist"
  ],
  "dependencies": {
    "antd": "^4.17.2"
  }
}
