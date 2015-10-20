#News

## Cloning this repository 
This will create a folder called `news` in `~/projects`, be sure to stash your own copy first under a different name or something.
```bash
cd ~/projects
mv news news_ross # if a news folder already exists ('#' is a comment in the shell)
git clone git@github.com:zhenyasav/news.git
cd news
meteor
```

## Starting from scratch
``` bash
cd ~/projects
meteor create news
cd news 
rm *
meteor add coffeescript less
mkdir client server packages
cd packages
meteor create --package feeds # create an empty package
meteor add feeds # add this package to the build
```

## Sublime dark sidebar
https://gist.github.com/umpirsky/5842174
In sublime's menu click the first menu item `Sublime Text > Preferences > Browse Packages` and make a folder in that location called `User` and drop the contents of that file in the link above named `Default.sublime-theme`. This should immediately take effect.

## Ignoring the .meteor folder
When you add a folder to the project in sublime via menu `Project > Add folder to project` you will notice a `.meteor` folder. This is a hidden folder which meteor uses to know that this is a meteor app and where the temporary build will go when you run the app. You can safely ignore it from the sublime folder list by opening your `User Preferences` (press Cmd+, (command+comma)) and adding the following key to the file somewhere between the root `{` and `}` (anywhere):
```json
  "folder_exclude_patterns":
  [
    ".git",
    ".svn",
    ".hg",
    "CVS",
    ".build*",
    ".meteor",
    ".npm"
  ],
```

## Sublime tricks
- `Cmd+P` - open the "find anything" UI
- `Cmd+shift+P` - open the "sublime commands" list
- Select some text and say `Cmd+D` (repeatedly if you want) to select the next instance of the same word and place an extra cursor at the end of it. Start typing or backspacing and you will be editing with multiple cursors at once! Woah.
- `Cmd+click` different locations in the code to place more cursors at those locations.
- `Cmd+K,B` (hold cmd, press K then B) to show/hide the sidebar
- `Cmd+F` is find in this file
- `Cmd+shift+F` is find in files. An example string for the "Where" field might be: `~/exp/news, *.coffee` which means search all coffee files in `~/exp/news`.

Sublime has many plugins (packages) of it's own, install Sublime Package Control https://packagecontrol.io/ for your version of sublime, and new commands will appear in the Cmd+shift+P window such as "Install Package" where you can find syntax highlighters for different languages, code prettifiers ... etc. (Note that these are sublime packages != meteor pacakges != npm packages ;))

## Things to read

https://atmospherejs.com is the source for all meteor packages

https://npmjs.com is the node package manager

_meteor packages_ != _npm packages_ but meteor packages can depend on (contain) npm packages (also known as modules sometimes) Many npm modules have already been wrapped in meteor packages by the community - always check atmosphere if your favorite npm package is already "meteorized". If not, create your own package and say in `package.js`
```js
Npm.depends({
  'npm-package': 'specific.version'
});
```

http://coffeescript.org has the full language spec for coffee and a "try it out" page which can be used to convert any coffee to js

http://js2.coffee/ can be used to convert any old js into coffee

https://lesscss.org has the full language spec for the less css preprocessor

https://docs.meteor.com is the definitive guide for all public Meteor apis

http://linuxandfriends.com/a-git-primer-for-new-users/ a reasonable git primer