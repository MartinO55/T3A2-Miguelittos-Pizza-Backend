class Product < ApplicationRecord
  belongs_to :category

  validates :category_id, presence: true
  validates :name, presence: true
  validates :price, presence: true

  def transform_product
    return {
      name: self.name,
      category: self.category.name,
      description: self.description,
      price: self.price,
      available: self.available,
      created: self.created_at,
      updated: self.updated_at
    }
  end

  def transform_all
    return self.map{|product| 
        product.transform_product
    }
  end
end
