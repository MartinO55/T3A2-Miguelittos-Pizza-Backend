class Order < ApplicationRecord
  belongs_to :user

  def transform_order
    return {
      id: self.id,
      name: self.user.name,
      pizza: self.pizza,
      side: self.side,
      drink: self.drink,
      complete: self.complete
    }
  end

  def transform_all
    return self.map{|order| 
        order.transform_order
    }
  end
end
