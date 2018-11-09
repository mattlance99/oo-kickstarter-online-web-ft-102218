
require "pry"

class Backer
  attr_accessor :name, :project, :backers
  attr_reader :backed_projects
  
  def initialize(name)
    @name = name
    @backed_projects = []
  end 
  
  def backed_projects=(project)
      
  end
  
  def back_project(project)
    self.backed_projects << project
    project.add_backer(self)
  end 

end

bob = Backer.new("Bob")
hang_glider = Project.new("Hanglider")
bob.back_project(hang_glider)