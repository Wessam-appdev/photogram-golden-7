class PicturesController < ApplicationController
  
  #CREATE
  
  def new_form
    render("/create/create_photo_form.html.erb")
  end
  
  def create_row
    
    p=Photo.new
    p.source=params.fetch("user_url")
    p.caption=params.fetch("user_caption")
    p.save
    
    redirect_to("/photos")
  end
  
  #READ
  def index
    @photo_list=Photo.all
    render("/read/all_photos.html.erb")
  end
  
  def show
    
    @the_id=params.fetch("the_id")
    the_photo=Photo.find(@the_id)
    
    
    @photo_source= the_photo.source
    @photo_caption=the_photo.caption
    # @photo_ago= time_ago_in_words(the_photo.created_at)
    render("/read/single_photo.html.erb")
  end
  
  #UPDATE
  
  def edit_form
    @edit_id=params.fetch("an_id")
    the_photo=Photo.find(@edit_id)
    @old_source=the_photo.source
    @old_caption=the_photo.caption
    
    
    render("/update/photo_update_form.html.erb")
  end
  
  def update_row
    
    update_id=params.fetch("some_id")
    photo=Photo.find(update_id)
    photo.source=params.fetch("user_url")
    photo.caption=params.fetch("user_caption")
    photo.save
    
    
    redirect_to("/photos/"+update_id)
  end
  
  #DELETE
  
  def destroy_row
    the_id=params.fetch("toast_id")
    photo=Photo.find(the_id)
    photo.destroy
    
    redirect_to("/photos")
  end

end