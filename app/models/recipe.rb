class Recipe < ActiveRecord::Base
  has_many :ingredients 

  # accepts_nested_attributes_for :ingredients

  def ingredients_attributes=(ingredients_attributes)

    ingredients_attributes.values.each do |ingredient_attribute|
      # self.ingredients.build(ingredient_attribute)
      @ingredient = Ingredient.find_or_create_by(ingredient_attribute)
      self.ingredients << @ingredient
    end
  end
    
end
