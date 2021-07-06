class Project
    attr_accessor :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        join = ProjectBacker.all.select do |join|
            join.project == self
        end
        join.map do |join|
            join.backer
        end
    end

end