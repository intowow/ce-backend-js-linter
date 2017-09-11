# JavaScript Code Quality Tool

## Structure
- eslintrc.yaml: ESLint configuration file
- git_hooks: Folder contains git hook scripts
- install.sh: The automatic installation script

## Installation
- Make sure you are in the root dir of a git repository.
- Install dependenceies `$ npm i --save-dev eslint eslint-config-airbnb-base eslint-plugin-import`
- Execute install.sh `$ sh -c "$(curl -fsSL https://raw.github.com/intowow/ce-backend-js-linter/master/install.sh)"`

Now **ESLint** is installed in this repository and the git **pre-commit** hook is updated. The coding style checker will be triggered before each commit. **Note: The \<git root\>/.git/hooks/pre-commit file on local filesystem will be overwrote during installation.**

## Package.json
For a new created git repository. You can add the installation script to the package.json to make sure everyone who clone it will have the coding style tool installed. Following is a package.json example:

```
{
  "scripts": {
    "postinstall": "sh -c \"$(curl -fsSL https://raw.github.com/intowow/ce-backend-js-linter/master/install.sh)\""
  }
}
```

Or put ce-backend-js-linter in the **devDependencies** section and it will be installed when running npm install. Following is a package.json example:
```
{
  "devDependencies": {
    "ce-backend-js-linter": "git+https://<account>:<pwd>@github.com/intowow/ce-backend-js-linter.git"
  }
}
```

## Reference
- Coding style check tool: [ESLint](http://eslint.org/). Find all available rules [here](http://eslint.org/docs/rules/).
- [Airbnb JavaScript Style Guideline](https://github.com/airbnb/javascript)
