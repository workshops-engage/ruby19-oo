# some helperz
class Alpha
  public
  def a
    "a" + b
  end
  protected
  def b
    "b"
  end
end

class Beta < Alpha
end