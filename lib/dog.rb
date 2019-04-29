require "pry"

class Dog
  attr_reader :name
  attr_accessor :all

  @@all = []

  def initialize(name)
    @name = name
    @@all << self #Took me a while to figure out I needed to enumerate over
                  #the @@all array to puts the .name 
  end

  def name
    @name
  end

  def self.clear_all
    @@all = []
  end

  def self.all
    @@all.each do |dog|
      puts dog.name
    end

  end
end

# fido = Dog.new("Fido")
#
# pluto = Dog.new("pluto")
#
# cooper = Dog.new("cooper")
#
# binding.pry
