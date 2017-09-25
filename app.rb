require 'sinatra'
require 'pry'
require 'sinatra/reloader'
also_reload '.lib/**/*.rb'
require './lib/volunteer'
require './lib/project'
require 'pg'

DB = PG.connect({dbname: 'volunteer_tracker'})

get ('/') do
  @projects = Project.all
  erb(:index)
end

post('/projects') do
  title = params['title']
  project = Project.new({title: title, id: nil})
  project.save
  @projects = Project.all
  erb(:index)
end

get("/projects/:id") do
  @projects = Project.all
  @project = Project.find(params.fetch("id").to_i())
  erb(:project)
end

post("/projects/:id") do
  name = params['name']
  project_id = params[:id]

  volunteer = Volunteer.new({name: name, project_id: project_id, id: nil})
  volunteer.save

  @projects = Project.all
  @project = Project.find(params.fetch("id").to_i())
  erb(:project)
end

get("/projects/:id/edit") do
  @project = Project.find(params.fetch("id").to_i())
  erb(:project_edit)
end

patch("/projects/:id/edit") do
  title = params.fetch("title")
  @project = Project.find(params.fetch("id").to_i())
  @project.update({:title => title})
  redirect('/')
end

delete("/projects/:id/edit") do
  @project = Project.find(params.fetch("id").to_i())
  @project.delete()
  @projects = Project.all()
  redirect('/')
end

get("/volunteers/:id") do
  @volunteers = Volunteer.all
  @volunteer = Volunteer.find(params.fetch("id").to_i())
  erb(:volunteer)
end

post("/volunteers/:id") do
  title = params['title']
  project_id = params[:id]

  project = Project.new({name: name, id: nil})
  project.save

  @volunteers = Volunteer.all
  @volunteer = Volunteer.find(params.fetch("id").to_i())
  erb(:volunteer)
end

patch("/volunteers/:id") do
  name = params.fetch("name")
  @volunteer = Volunteer.find(params.fetch("id").to_i())
  @volunteer.update({:name => name})
  redirect('/')
end

delete("/volunteers/:id") do
  @volunteer = Volunteer.find(params.fetch("id").to_i())
  @volunteer.delete()
  @volunteers = Volunteer.all()
  redirect('/')
end
