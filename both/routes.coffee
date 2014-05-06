Router.configure
  layoutTemplate: 'layout'

Router.map ->
  @.route 'recommendationsList', { path: '/' }