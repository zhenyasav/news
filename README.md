#News

## Cloning this repository 
This will create a folder called news in ~/projects, be sure to stash your own copy first under a different name or something.
```bash
cd ~/projects
mv news news_ross # if a news folder already exists ('#'' is a comment in the shell)
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
meteor create --package feeds
meteor add feeds
```

## Things to read

https://atmospherejs.com is the source for all meteor packages

https://npmjs.com is the node package manager

_meteor packages_ != _npm packages_ but meteor packages can depend on (contain) npm packages (also known as modules sometimes)

https://coffeescript.org has the full language spec for coffee and a "try it out" page

https://lesscss.org has the full language spec for the less css preprocessor

https://docs.meteor.com is the definitive guide for all public Meteor apis