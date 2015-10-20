Template.feed.helpers
  items: -> Stories.find {}, sort: rating: -1
  ratings: -> [0..5].map (r) => 
    story: @
    rating: r


Template.feed.events

  'click a': ->
    Stories.update @story._id, $set: rating: @rating