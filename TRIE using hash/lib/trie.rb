class Trie < Hash
  def initialize
    super
  end

  def insert(string)
    string.chars.inject(self) do |h, char|
      h[char] ||= { }
    end
  end
end