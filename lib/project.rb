class Project
    attr_reader :title
    attr_accessor :backers
    @@all = []
    def initialize(title)
        @title = title
        @@all << self
        @backers = []
    end
    def self.all
        @@all
    end
    def add_backer(backer_name)
        @backers << backer_name
        backer_name.backed_projects << self
    end
end