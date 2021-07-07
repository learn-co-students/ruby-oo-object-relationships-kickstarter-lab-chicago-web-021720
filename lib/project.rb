class Project
    attr_accessor :title
    
    def initialize(title)
        self.title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers 
        backed_projects = ProjectBacker.all.select {|backed_project| backed_project.project == self}
        backed_projects.map {|backed_project| backed_project.backer}
    end
end