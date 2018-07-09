class Recipe < ActiveRecord::Base
  has_many :ingredients

  def ingredients_attributes=(ingredients_attributes)
    ingredients_attributes.each do  |ingredient_attribute|
      if !ingredient_attribute[:name].blank?
        self.ingredients << Ingredient.new(ingredient_attribute)
      end
    end
  end

  def ingredient_attribute
    self.ingredients
  end
end
