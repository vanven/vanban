class Block
  include MongoMapper::EmbeddedDocument

  key :title, String
  key :description, String

  embedded_in :kanban

end