require_relative '../lib/trie'

t = Trie.new
t.insert('dogs')
puts t.root.child_nodes