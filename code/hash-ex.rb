class Hash
  def + other_hash
    raise "not a hash" unless other_hash.is_a?(Hash)
    self.merge(other_hash)
  end
  def - other_hash
    self.reject{|k,v| other_hash[k] == v }
  end
  def +@
    Hash[self.map{|k,v| [k.succ, v.succ] }]
  end
end