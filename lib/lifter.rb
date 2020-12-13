class Lifter

  @@all = []

  attr_reader :name, :lift_total

  def initialize( this_name, this_lift_total )
    @name = this_name
    @lift_total = this_lift_total
    @@all << self
  end

  # - Get a list of all lifters
  def self.all
    @@all
  end

  # - Get a list of all the memberships that a specific lifter has
  def memberships
    Membership.all.select{ | membership | membership.lifter == self }
  end

  # - Get a list of all the gyms that a specific lifter has memberships to
  def gyms
    memberships.map{ | membership | membership.gym }
  end

  # - Get the average lift total of all lifters
  def self.average_lift
    self.all.sum{ | lifter | lifter.lift_total }.to_f / self.all.size
  end

  # - Get the total cost of a specific lifter's gym memberships
  def total_cost
    memberships.sum{ | membership | membership.cost }
  end

  # - Given a gym and a membership cost, sign a specific lifter up for a new gym
  def join_gym( gym, cost )
    Membership.new( cost, gym, self )
  end

end