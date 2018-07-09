class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    binding.pry
    @recipe.save
    redirect_to @recipe
  end

  private

  def recipe_params
    params.require(:recipe).permit(:ingredients_attributes => [:name, :quantity], :title)
  end
end
