class RecipesController < ApplicationController
  require 'contentful'
  include ContentfulConcern
  before_action :contentful_client, only: [:index,:show]
  def index
    begin
      @recipes = @client.entries(content_type: 'recipe')
    rescue StandardError => e 
      # This can only occur incase of our invalid credientials So no need to handle different cases
      redirect_to error_500_path
    end
  end

  def show
    begin
      @recipe = @client.entry params[:id]
    rescue StandardError => e 
      # This can only occur incase of our invalid credientials So no need to handle different cases
      redirect_to error_500_path
    end
  end
end
