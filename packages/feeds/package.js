Package.describe({
  name: 'feeds',
  version: '0.0.1',
  // Brief, one-line summary of the package.
  summary: '',
  // URL to the Git repository containing the source code for this package.
  git: ''
});

Npm.depends({
  'feedparser': '1.1.3',
  'request': '2.65.0'
});

Package.onUse(function(api) {
  
  api.use(['ecmascript', 'coffeescript', 'mongo', 'templating']);
  api.addFiles('collection.coffee');
  api.addFiles(['feeds.coffee'], 'server');

});