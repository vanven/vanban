class Kanban
  include MongoMapper::Document

  key :board_name
  timestamps!

  belongs_to  :user
  many :blocks

end
