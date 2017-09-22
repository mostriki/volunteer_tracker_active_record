# class Volunteer
#   attr_reader(:title, :id)
#
#   def initialize(attributes)
#     @name = attributes[:name]
#     @id = attributes[:id]
#   end
#
# #passing
#   def self.all
#     all_volunteers = DB.exec("SELECT * FROM volunteers;")
#     volunteers = []
#     all_volunteers.each() do |volunteer|
#       name = volunteer.fetch("name")
#       id = name.fetch("id").to_i()
#       volunteers.push(Volunteer.new({:name => title, :id => id}))
#     end
#     volunteers
#   end
#
#   def save
#     result = DB.exec("INSERT INTO volunteers (name) VALUES ('#{@name}') RETURNING id;")
#     binding.pry
#     @id = result.first().fetch("id").to_i()
#   end
# end
