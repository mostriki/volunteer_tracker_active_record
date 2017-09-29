class Volunteer < ActiveRecord::Base
  belongs_to(:project)
end


# class Volunteer
#   attr_reader(:name, :project_id, :id)
#
#   def initialize(attributes)
#     @name = attributes[:name]
#     @project_id = attributes[:project_id]
#     @id = attributes[:id]
#   end
#
#   def self.all
#     all_volunteers = DB.exec("SELECT * FROM volunteers;")
#     volunteers = []
#     all_volunteers.each() do |volunteer|
#       name = volunteer.fetch("name")
#       project_id = volunteer.fetch("project_id").to_i()
#       id = volunteer.fetch("id").to_i()
#       volunteers.push(Volunteer.new({:name => name, :project_id => project_id, :id => id}))
#     end
#     volunteers
#   end
#
#   def self.find(id)
#     result = DB.exec("SELECT * FROM volunteers WHERE id = #{id};")
#     name = result.first().fetch("name")
#     Volunteer.new({:name => name, :project_id => project_id, :id => id})
#   end
#
#   def projects
#     volunteer_projects = []
#     projects = DB.exec("SELECT * FROM projects WHERE id = #{self.project_id};")
#     projects.each do |project|
#       title = project.fetch("title")
#       id = project.fetch("id").to_i
#       volunteer_projects.push(Project.new({title: title, id: id}))
#     end
#     volunteer_projects
#   end
#
#   def save
#     result = DB.exec("INSERT INTO volunteers (name, project_id) VALUES ('#{@name}', '#{@project_id}') RETURNING id;")
#     @id = result.first().fetch("id").to_i()
#   end
#
#   def ==(another_volunteer)
#     self.name().==(another_volunteer.name()).&(self.project_id().==(another_volunteer.project_id()))
#   end
#
#   def self.find(id)
#     found_volunteer = nil
#     Volunteer.all().each() do |volunteer|
#       if volunteer.id().==(id)
#         found_volunteer = volunteer
#       end
#     end
#     found_volunteer
#   end
#
#   def update(attributes)
#     @name = attributes.fetch(:name, @name)
#     DB.exec("UPDATE volunteers SET name = '#{@name}' WHERE id = #{self.id};")
#   end
#
#   def delete
#     DB.exec("DELETE FROM volunteers WHERE id = #{self.id()};")
#   end
# end
