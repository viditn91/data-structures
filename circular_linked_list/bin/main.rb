require_relative '../lib/circular_arrangement'
require_relative '../lib/node'

no_of_nodes = gets.chomp.to_i
string = gets.chomp

arrangement = CircularArrangement.new(Node.new(1))
2.upto(no_of_nodes) do |n|
  arrangement.insert(Node.new(n))
end

result = arrangement.first_node
flag = 0
loop do
  string.each_char do |char|
    case char
    when 'a'
      result = result.next_node
    when 'b'
      arrangement.remove(result)
      result = result.next_node
    end
    if result.next_node == result
      puts result.value
      flag = 1
      break
    end
  end
  break if flag == 1
end