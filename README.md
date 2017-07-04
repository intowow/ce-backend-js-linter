# JavaScript Code Quality Tool

## Structure
- eslint.json: ESlint configuration file
- git_hooks: Folder contains git hook scripts
- install.sh: The automatic installation script

## Installation
- Make sure you are in the root dir of a git repository.
- Install dependenceies `$ npm install --save-dev eslint eslint-config-airbnb-base eslint-plugin-import`
- Execute install.sh `$ sh -c "$(curl -fsSL https://raw.github.com/intowow/ce-backend-js-linter/master/install.sh)"`

Now ESlint has installed in this repository. And will start to run coding style check before each commit.

## Package.json
For a new created git repository. You can add the installation script to the package.json to make sure everyone who clone it will have the coding style tool installed. Following is a package.json example:

```
{
  "script": {
    "postinstall": "sh -c \"$(curl -fsSL https://raw.github.com/intowow/ce-backend-js-linter/master/install.sh)\""
  }
}
```
