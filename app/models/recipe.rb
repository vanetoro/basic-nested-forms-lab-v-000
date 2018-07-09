class Recipe < ActiveRecord::Base
  has_many :ingredients

  def ingredients_attributes=(ingredients_attributes)
    ingredients_attributes.each do  |ingredient_attribute|
      self.ingredients = Ingredient.build(ingredient_attribute)
    end
  end
end
