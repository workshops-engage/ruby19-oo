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

# PPP

class Person
  def >(other_person)
    self.age > other_person.age
  end
  private
  def age
    20
  end
end