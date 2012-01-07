
class NewBookView extends Backbone.View
  events:
    'click .add_new_photo' : 'add_new_photo'

  visible_photos: 0

  initialize: ->
    @$('.photos .field').hide()

  add_new_photo: =>
    next_photo = @el.find(".photos .field")[@visible_photos+=1]
    @$(next_photo).show()

    return false

$ ->
  new_book_view = new NewBookView el: $('#new_book')
