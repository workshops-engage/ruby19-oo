class String
  def is_upcase?
    self == self.upcase
  end
end

class Array
  alias :old_map :map
  def map sym
    old_map &sym
  end
end