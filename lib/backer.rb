class Backer
  attr_accessor :name
  def initialize(name)
    @name = name
  end
  def back_project(project)
    ProjectBacker.new(project,self)
  end
  def backed_projects
    found = ProjectBacker.all.find_all{|projbacker| projbacker.backer == self}
    found.collect{|proj| proj.project}
  end
end
