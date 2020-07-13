class Backer
  
  attr_accessor :name, :backed_projects
  
  @@all = []
  
  def initialize(name)
    @name = name
    @backed_projects = []
    @@all << self
  end
  
  def back_project(project)
    if project.class == Project
      @backed_projects << project
      project.backers << self
    end
  end
  
  def self.all
    @@all
  end
  
end