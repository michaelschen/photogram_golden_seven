class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    @photo_number = params[:id]
    @show = Photo.find_by({ :id => params["id"]})
  end

  def new_form

  end

  def create_row
    a = Photo.new
    a.caption = params["the_caption"]
    a.source = params["the_source"]
    a.save

    redirect_to("http://localhost:3000/photos")
  end

  def destroy

    a = Photo.find_by({ :id => params["id"]})
    a.destroy

    redirect_to("http://localhost:3000/photos")
  end

  def edit_form
    @show_caption = Photo.find_by({ :id => params["id"]})
    @show_url = Photo.find_by({ :id => params["id"]})

  end

  def update_row
    a = Photo.find_by({ :id => params["id"]})
    a.caption = params["the_caption"]
    a.source = params["the_source"]
    a.save

    redirect_to("http://localhost:3000/photos/")

  end

end
