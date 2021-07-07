class Backer
    attr_accessor
    attr_reader :name

    @@all = []

    def self.all
        @@all
    end
    
    def initialize(name)
        @name = name
        @@all << self
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        ProjectBacker.all.find_all { |pb| pb.backer == self }.map { |pb| pb.project }
    end

end