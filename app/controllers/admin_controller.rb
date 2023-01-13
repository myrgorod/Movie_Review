class AdminController < ApplicationController
  def index
  end

  def movies
    @movies = Movie.all.includes(:user)
  end

  def users
  end

  def show_movie
    @movie = Movie.includes(:user).find(params[:id])
  end
end
