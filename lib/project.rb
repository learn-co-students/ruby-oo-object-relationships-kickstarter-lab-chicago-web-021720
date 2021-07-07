class Project
    attr_accessor :title
    attr_reader

    @@all = []

    def self.all
        @@all
    end
    
    def initialize(title)
        @title = title
        @@all << self
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        ProjectBacker.all.find_all { |pb| pb.project == self }.map { |pb| pb.backer }
    end

end