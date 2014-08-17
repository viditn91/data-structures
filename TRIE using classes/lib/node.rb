class Node
  attr_accessor :value, :child_nodes

  def initialize(value=nil)
    @value = value
    @child_nodes = {}
  end
end