class Member
  attr_reader :name, :power, :bio

  @@TEAMS = []

  def initialize(params)
    @name = params[:name]
    @motto = params[:power]
    @bio = params[:bio]
    @@TEAMS << self
  end

  def self.all
    @@TEAMS
  end
end
