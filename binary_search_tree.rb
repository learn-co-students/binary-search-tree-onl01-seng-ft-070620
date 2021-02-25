require 'pry'

class Node 
  attr_accessor :data, :left, :right

  def initialize(data)
    @data = data
    @left = nil
    @right = nil
  end
  
  def insert(data)
    if data <= self.data
      self.left ? self.left.insert(data) : self.left = Node.new(data)
    else
      self.right ? self.right.insert(data) : self.right = Node.new(data)
    end
  end
  
  def each(&block)
    self.left.each(&block) if self.left
    yield self.data
    self.right.each(&block) if self.right
  end

end