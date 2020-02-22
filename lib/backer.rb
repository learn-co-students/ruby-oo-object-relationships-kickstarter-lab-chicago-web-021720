class Backer
    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        join = ProjectBacker.all.select do |join|
            join.backer == self
        end
        join.map do |join|
            join.project
        end
    end
end