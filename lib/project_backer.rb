class ProjectBacker
    attr_accessor :project, :backer
    attr_reader

    @@all = []

    def self.all
        @@all
    end
    
    def initialize(project, backer)
        @project = project
        @backer = backer
        @@all << self
    end

end