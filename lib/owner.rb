class Owner
  # code goes here
  attr_accessor :dog, :cat, :fish, :pets, :name
  attr_reader :species

  @@all = []

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.count
  end

  def initialize(name, species)
    @species = species
    @name = name
    @pets = {fishes: [], cats: [], dogs:[]}
    @@all << self
  end

  def say_species
    puts @species
  end

  def buy_cat(name)
    new_cat = Cat.new(name)
    @pets[:cats] << name
  end


end
