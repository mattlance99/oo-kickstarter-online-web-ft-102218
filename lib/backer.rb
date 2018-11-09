
require "pry"

class Backer
  attr_accessor :name, :project, :backed_projects, :backers
  
  def initialize(name)
    @name = name
    @backed_projects = []
  end 

  def back_project(project)
    @backed_projects << project
    project.add_backer(backer)
  end 

end

bob = Backer.new("Bob")
hang_glider = Project.new("Hanglider")
bob.back_project(hang_glider)