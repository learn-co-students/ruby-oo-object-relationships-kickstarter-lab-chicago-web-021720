class Project
  attr_accessor :title
  def initialize(title)
    @title = title
  end
  def add_backer(backer)
    ProjectBacker.new(self, backer)
  end
  def backers
    found = ProjectBacker.all.find_all{|projbacker| projbacker.project == self}
    found.collect{|back| back.backer}
  end
end
