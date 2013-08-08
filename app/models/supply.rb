class Supply
  include MongoMapper::EmbeddedDocument

  key :supply, String
  key :quantity, Integer


end
