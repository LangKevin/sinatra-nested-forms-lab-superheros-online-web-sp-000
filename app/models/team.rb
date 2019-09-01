class Team
  attr_reader :name, :motto

  @@PIRATES = []

  def initialize(params)
    @name = params[:name]
    @weight = params[:weight]
    @height = params[:height]
    @@PIRATES << self
  end

  def self.all
    @@PIRATES
  end
end
