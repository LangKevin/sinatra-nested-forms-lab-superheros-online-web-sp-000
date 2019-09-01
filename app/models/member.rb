class Member
  attr_reader :name, :power, :bio

  @@MEMBERS = []

  def initialize(params)
    @name = params[:name]
    @motto = params[:power]
    @bio = params[:bio]
    @@MEMBERS << self
  end

  def self.all
    @@MEMBERS
  end
end
