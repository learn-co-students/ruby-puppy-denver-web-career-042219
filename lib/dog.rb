require "pry"

class Dog
  attr_writer
  attr_reader :name
  attr_accessor :all

  @@all = []

  def initialize(name)
    @name = name
    @@all << @name #depending on what I shovel I fail one of two tests
                   #@name/name fails the .new) adds the new dog to the @@all array
                   #self fails .all)is a class method that puts out the name of each dog to the terminal
                   #because it puts out the computer memory values
  end

  def name
    @name
  end

  def self.clear_all
    @@all = []
  end

  def self.all
    puts @@all
  end

end

# fido = Dog.new("Fido")
#
# pluto = Dog.new("pluto")
#
# cooper = Dog.new("cooper")
#
# binding.pry
