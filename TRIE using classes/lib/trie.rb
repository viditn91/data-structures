require_relative 'node'

class Trie
  attr_accessor :root

  def initialize
    @root = Node.new
  end

  def insert(string)
    string.chars.inject(root) do |node, char|
      node.child_nodes[char] ||= Node.new(char)
    end
  end
end