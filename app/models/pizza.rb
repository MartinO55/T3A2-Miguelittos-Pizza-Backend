class Pizza < ApplicationRecord
  belongs_to :user

  def transform_pizza
    return {
      name: self.name,
      description: self.description,
      base: self.base,
      sauce: self.sauce,
      toppings: self.toppings
    }
  end

  def transform_all
    return self.map{|pizza| 
        pizza.transform_pizza
    }
  end
end
