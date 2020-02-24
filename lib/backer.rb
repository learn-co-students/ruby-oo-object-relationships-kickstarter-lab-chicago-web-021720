class Backer 
    attr_accessor :name

    def initialize(name)
        self.name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    #This pulls the backed projects associated with this backer instance from ProjectBacker.all
    #Then it iterates through the ProjectBacker instances and pulls out the individual projects
    def backed_projects
        backed_projects = ProjectBacker.all.select {|backed| backed.backer == self}
        backed_projects.map {|project| project.project}
    end
end