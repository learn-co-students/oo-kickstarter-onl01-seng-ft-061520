class Project
    #has many backers 
    attr_accessor :title, :backers
    @@backers = []
    def initialize(title)
        @title = title
        @backers = []
    end

    def add_backer(backer)
        @backers << backer
        backer.backed_projects << self
    end
end
