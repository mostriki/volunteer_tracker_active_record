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
