class CircularArrangement
  attr_accessor :first_node

  def initialize(node)
    @first_node = node
    @last_node = node
  end

  def insert(node)
    @last_node.next_node = node
    @last_node = node
    @last_node.next_node = @first_node
  end

  def remove(node)
    base_node = @first_node
    while(base_node.next_node != node) do
      base_node = base_node.next_node
    end
    base_node.next_node = node.next_node
    @first_node = base_node.next_node
  end
end