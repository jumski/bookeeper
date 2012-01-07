
class ManagePhotos extends Backbone.View
  events:
    'click .add_new_photo' : 'add_new_photo'

  visible_photos: 0

  initialize: ->
    @$('.field').hide()
    @add_new_photo()

  add_new_photo: =>
    console.log @el.find(".field")
    next_photo = @el.find(".field")[@visible_photos+=1]
    @$(next_photo).show()

    return false

$ ->
  manage_photos = new ManagePhotos el: $('.photos')
