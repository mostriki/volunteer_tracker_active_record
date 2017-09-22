class Volunteer
  attr_reader(:title :id)

  def initialize(attributes)
    @name = attributes[:name]
    @id = attributes[:id]
end
