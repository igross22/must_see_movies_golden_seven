class MoviesController < ApplicationController

def index

    @list_of_movies = Movie.all

  end

  def show

    @movie = Movie.find(params["id"])

  end

  def destroy

    @movie = Movie.find(params["id"])
    @movie.destroy
    redirect_to("http://localhost:3000/movies")

  end

  def new_form

  end

  def create_row

    d = Movie.new
    d.title = params["the_title"]
    d.year = params["the_year"]
    d.duration = params["the_duration"]
    d.description = params["the_description"]
    d.image_url = params["the_image_url"]
    d.save
    redirect_to("http://localhost:3000/movies")

  end


  def update_row
    d = Movie.find(params["id"])
    d.title = params["the_title"]
    d.year = params["the_year"]
    d.duration = params["the_duration"]
    d.description = params["the_description"]
    d.image_url = params["the_image_url"]
    d.save

    redirect_to("http://localhost:3000/movies")
  end

  def edit_form
    @movie = Movie.find(params["id"])
  end

end
