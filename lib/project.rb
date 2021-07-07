class Project
    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        project_backer_instances = ProjectBacker.all.select {|pb| pb.project == self}
        project_backer_instances.collect {|pb| pb.backer}
    end
end