request = Npm.require 'request'
FeedParser = Npm.require 'feedparser'

url = 'http://feeds.venturebeat.com/VentureBeat'

insertStory = Meteor.bindEnvironment (item) ->
  Stories.insert
    title: item.title
    author: item.author

Meteor.methods
  clear: -> Stories.remove {}
  fetch: ->
    req = request url
    feedparser = new FeedParser()

    req.on 'error', (err) -> console.log 'error:', err
    req.on 'response', (res) ->
      stream = this

      if res.statusCode isnt 200
        console.log 'request not 200'
        return

      stream.pipe feedparser

    feedparser.on 'readable', ->
      i = 0
      while i++ < 10 and item = @read()
        insertStory item

       