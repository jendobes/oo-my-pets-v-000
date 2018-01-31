class Owner
  # code goes here
  attr_accessor :dog, :cat, :fish, :pets
  @@all = []

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def initialize(name)
    @name = name
    @pets = {fishes: [], cats: [], dogs:[]}
  end



end
