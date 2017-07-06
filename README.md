# JavaScript Code Quality Tool

## Structure
- eslintrc.yaml: ESLint configuration file
- git_hooks: Folder contains git hook scripts
- install.sh: The automatic installation script

## Installation
- Make sure you are in the root dir of a git repository.
- Install dependenceies `$ npm i --save-dev eslint eslint-config-airbnb-base eslint-plugin-import`
- Execute install.sh `$ sh -c "$(curl -fsSL https://raw.github.com/intowow/ce-backend-js-linter/master/install.sh)"`

Now ESLint is installed in this repository. And coding style checker will be triggered before each commit.

## Package.json
For a new created git repository. You can add the installation script to the package.json to make sure everyone who clone it will have the coding style tool installed. Following is a package.json example:

```
{
  "script": {
    "postinstall": "sh -c \"$(curl -fsSL https://raw.github.com/intowow/ce-backend-js-linter/master/install.sh)\""
  }
}
```
