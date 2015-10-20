#News

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

https://atmospherejs.com is the source for all meteor packages
https://npmjs.com is the node package manager

_meteor packages_ != _npm packages_ but meteor packages can depend on (contain) npm packages (also known as modules sometimes)

https://coffeescript.org has the full language spec for coffee and a "try it out" page
https://lesscss.org has the full language spec for the less css preprocessor

https://docs.meteor.com is the definitive guide for all public Meteor apis