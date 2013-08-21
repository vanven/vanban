# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(
  name: 'Mortimer',
  provider: 'google_oauth2',
  uid: '1111',
  email: 'koala4lyf@gmail.com',
  kanbans: [
    Kanban.new(board_name: 'My Kanban')
  ]
)

User.create!(
  name: 'Hans',
  provider: 'google_oauth2',
  uid: '1234',
  email: 'hans.koala@gmail.com',
  kanbans: [
    Kanban.new(board_name: 'Project 1'),
    Kanban.new(board_name: 'Project 2'),
    Kanban.new(board_name: 'Project 3')
  ]
)