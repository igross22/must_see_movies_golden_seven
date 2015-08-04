class ActorsController < ApplicationController

def index

    @list_of_actors = Actor.all

  end

  def show

    @actor = Actor.find(params["id"])

  end

  def destroy

    @actor = Actor.find(params["id"])
    @actor.destroy
    redirect_to("http://localhost:3000/actors")

  end

  def new_form

  end

  def create_row

    d = Actor.new
    d.name = params["the_name"]
    d.bio = params["the_bio"]
    d.dob = params["the_dob"]
    d.image_url = params["the_image_url"]
    d.save
    redirect_to("http://localhost:3000/actors")

  end

  def update_row
    d = Actor.find(params["id"])
    d.name = params["the_name"]
    d.bio = params["the_bio"]
    d.dob = params["the_dob"]
    d.image_url = params["the_image_url"]
    d.save

    redirect_to("http://localhost:3000/actors")
  end

  def edit_form
    @actor = Actor.find(params["id"])
  end

end
