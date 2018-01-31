class Owner
  # code goes here
  attr_accessor :dog, :cat, :fish, :pets, :name
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

  def buy_cat(name)
    new_cat = Cat.new(name)
    @pets[:cats] << name
  end


end
