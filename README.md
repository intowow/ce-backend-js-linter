# JavaScript Code Quality Tool

## Usage
- For pre-commit linter check, it will check automatically after installation
- For manually linter check, run **"./node_modules/.bin/i2wlint" + any other arguments using in eslint**.  
    For example, "./node_modules/.bin/i2wlint app.js" for checking syntax in app.js
                 "./node_modules/.bin/i2wlint --fix app.js" for fixing syntax error in app.js

## Installation
- Make sure you are in the root dir of a git repository.
- **First Method**: Execute install.sh `$ sh -c "$(curl -fsSL https://raw.github.com/intowow/ce-backend-js-linter/master/install.sh)"`
- **Second Method**: Add this repository in package.json, and yarn/npm install. **If not compatible with node engine error occurs when                        using yarn install, try "yarn insatll --ignore-engines" or upgrade node version** 

## Package.json
For a new created git repository. You can add the installation script to the package.json to make sure everyone who clone it will have the coding style tool installed. Following is a package.json example:

**First Method**:
```
{
  "scripts": {
    "postinstall": "sh -c \"$(curl -fsSL https://raw.github.com/intowow/ce-backend-js-linter/master/install.sh)\""
  }
}
```

Or put ce-backend-js-linter in the **devDependencies** section and it will be installed when running npm install. Following is a package.json example:

**Second Method**:
```
{
  "devDependencies": {
    "ce-backend-js-linter": "git+https://github.com/intowow/ce-backend-js-linter.git"
  }
}
```

## Structure
- eslintrc.yaml: ESLint configuration file
- git-hooks: Folder contains git hook scripts
- install.sh: The automatic installation script

Now **ESLint** is installed in this repository and the git **pre-commit** hook is updated. The coding style checker will be triggered before each commit. **Note: The \<git root\>/.git/hooks/pre-commit file on local filesystem will be overwrote during installation.**

## Reference
- Coding style check tool: [ESLint](http://eslint.org/). Find all available rules [here](http://eslint.org/docs/rules/).
- [Airbnb JavaScript Style Guideline](https://github.com/airbnb/javascript)
