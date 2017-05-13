class MoviesController < ApplicationController

  def index
    movies = Movie.all
    render json: movies.as_json(only:
    [:title, :release_date ]), :status => :ok
  end

  def show
    movie = Movie.find_by title: params[:title]
    if movie
      render json: movie.as_json(only:
      [:title, :release_date]), :status => :ok
    end
  end

end
