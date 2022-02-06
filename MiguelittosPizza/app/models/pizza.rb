class Pizza < ApplicationRecord
  belongs_to :user

  def transform_pizza
    return {
      name: self.name,
      description: self.description,
      price: self.price,
      recipe: self.recipe
    }
  end

  def transform_all
    return self.map{|pizza| 
        pizza.transform_pizza
    }
  end
end
