class Member
  attr_reader :name, :motto

  @@TEAMS = []

  def initialize(params)
    @name = params[:name]
    @motto = params[:power]
@motto = params[:power]
    @@TEAMS << self
  end

  def self.all
    @@TEAMS
  end
end
