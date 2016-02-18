class Dessert
    attr_accessor :name
    attr_accessor :calories
  def initialize(name, calories)
    # your code here
    @name = name
    @calories = calories
  end
  
  def healthy?
    # your code here
    @calories<200
  end
  def delicious?
    # your code here
    true
  end
end

class JellyBean < Dessert
  attr_accessor :flavor
  def initialize(flavor)
    # your code here
    super(flavor + " jelly bean", 5)
    @flavor = flavor
  end
    
  def delicious?
    return flavor == 'licorice' ? false: true
  end
end
