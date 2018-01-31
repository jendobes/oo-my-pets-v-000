class Owner
  # code goes here
  attr_accessor :dog, :cat, :fish
  @@all = []

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
    @all
  end


end
