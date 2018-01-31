require 'pry'

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

  def initialize(name)
    @species = "human"
    @name = name
    @pets = {fishes: [], cats: [], dogs:[]}
    @@all << self
  end

  def say_species
    "I am a human."
  end

  def buy_cat(name)
    name.create_cat = name
    @pets[:cats] << name
  end

  def create_cat=(name)
    name = Cat.new(name)
  end

end

binding.pry
