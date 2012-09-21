Spine       = require('spine/core')
# $           = Spine.$
templates   = require('duality/templates')

Author      = require('models/author')


class Authors extends Spine.Controller
  className: 'authors panel'

  constructor: ->
    super
    Author.fetch()
    @active @render

  render: ->
    context = 
      authors: Author.all()
    @el.html templates.render('authors.html', {}, context)
    @


module.exports = Authors