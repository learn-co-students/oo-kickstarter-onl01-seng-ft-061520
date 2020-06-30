class Backer
    attr_reader :name
    attr_accessor :backed_projects
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
        @backed_projects = []
    end
    def self.all
        @@all
    end
    def back_project(project_title)
        @backed_projects << project_title
        project_title.backers << self
    end
end