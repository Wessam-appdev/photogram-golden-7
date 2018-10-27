class PicturesController < ApplicationController
  
  #CREATE
  
  def new_form
    render("/create/create_photo_form.html.erb")
  end
  
  def create_row
    render("/create/create_photo_result.html.erb")
  end
  
  #READ
  def index
    render("/read/all_photos.html.erb")
  end
  
  def show
    render("/read/single_photo.html.erb")
  end
  
  #UPDATE
  
  def edit_form
    render("/update/photo_update_form.html.erb")
  end
  
  def update_row
    render("/update/photo_update_result.html.erb")
  end
  
  #DELETE
  
  def destroy_row
    render("/delete/delete_result.html.erb")
  end

end