class Pirate
  # Pirates should have a name, weight, and height. You will also need a class method that returns all the pirates.
  attr_accessor :name, :weight, :height
  @@pirates = []

  def initialize(name, weight, height)
    @name = name
    @weight = weight
    @height = height
    @@pirates << self
  end

  def self.all
    @@pirates
  end

end
