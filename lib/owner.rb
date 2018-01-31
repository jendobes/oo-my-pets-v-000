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
    name = Cat.new(name)
    @pets[:cats] << name
  end

  def buy_dog(name)
    name = Dog.new(name)
    @pets[:dogs] << name
  end

  def buy_fish(name)
    name = Fish.new(name)
    @pets[:fishes] << name
  end

  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |dog|
      dog.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fish].each do |dog|
      dog.mood = "happy"
    end
  end

  def sell_pets
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end

end
