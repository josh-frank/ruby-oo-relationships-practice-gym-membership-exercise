class Membership

  @@all = []

  attr_reader :cost
  attr_accessor :gym, :lifter

  def initialize( this_cost, this_gym, this_lifter )
    @cost = this_cost
    @gym = this_gym
    @lifter = this_lifter
    @@all << self
  end

  # - Get a list of all memberships
  def self.all
    @@all
  end

end
