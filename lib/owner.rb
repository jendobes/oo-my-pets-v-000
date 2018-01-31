class Owner
  # code goes here
  attr_accessor :dog, :cat, :fish
  @@all = []

  def self.all
    @@all
  end

  def self.reset_all
  end


end
