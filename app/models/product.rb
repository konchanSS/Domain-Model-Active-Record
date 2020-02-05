class Product < ApplicationRecord
  def initialize(name, type)
    self.name = name
    self.type = type
  end
end

class WordProcessor < Product
  def initialize(name)
    self.name = name
    self.type = "W"
  end
end

class Spreadsheet < Product
  def initialize(name)
    self.name = name
    self.type = "S"
  end
end

class Database < Product
  def initialize(name)
    self.name = name
    self.type = "D"
  end
end