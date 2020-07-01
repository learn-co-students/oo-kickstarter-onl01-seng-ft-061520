#a class of backers that are linked to projects
class Backer
  attr_accessor :name

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def backed_projects
    @backed_projects
  end

  def back_project(project)
    backed_projects << project
    project.backers << self
  end
end
