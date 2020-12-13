class Gym

  @@all = []

  attr_reader :name

  def initialize( this_name )
    @name = this_name
    @@all << self
  end

  # - Get a list of all gyms
  def self.all
    @@all
  end

  # - Get a list of all memberships at a specific gym
  def memberships
    Membership.all.select{ | membership | membership.gym == self }
  end

  # - Get a list of all the lifters that have a membership to a specific gym
  def lifters
    memberships.map{ | membership | membership.lifter }
  end

  # - Get a list of the names of all lifters that have a membership to that gym
  def lifter_names
    lifters.map{ | lifter | lifter.name }
  end

  # - Get the combined lift total of every lifter has a membership to that gym
  def combined_lift_total
    lifters.sum{ | lifter | lifter.lift_total }
  end

end
