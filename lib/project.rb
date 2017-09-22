class Project
  attr_reader(:title, :id)

  def initialize(attributes)
    @title = attributes.fetch(:title)
    @id = attributes.fetch(:id)
  end

  def ==(another_project)
    self.title().==(another_project.title()).&(self.id().==(another_project.id()))
  end

  def self.all
    all_projects = DB.exec("SELECT * FROM projects;")
    projects = []
    all_projects.each() do |title|
      project = title.fetch("title")
      id = title.fetch("id").to_i()
      projects.push(Project.new({:title => title, :id => id}))
    end
    projects
  end

  def save
    result = DB.exec("INSERT INTO projects (title) VALUES ('#{@title}') RETURNING id;")
    @id = result.first().fetch("id").to_i()
  end

  def self.find(id)
    result = DB.exec("SELECT * FROM projects WHERE id = #{id};")
    title = result.first().fetch("title")
    Project.new({:title => title, :id => id})
  end

  def update(attributes)
    @title = attributes.fetch(:title, @title)
    DB.exec("UPDATE projects SET title = '#{@title}' WHERE id = #{self.id()};")
  end

  def delete
    DB.exec("DELETE FROM projects WHERE id = #{self.id()};")
  end
end
