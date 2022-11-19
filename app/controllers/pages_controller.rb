class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @recipes = Recipe.all.sample(12)
  end
end
