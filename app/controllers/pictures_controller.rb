class PicturesController < ApplicationController
  def index
    @photo_list = Photo.all
    
    render("pic_templates/all_photos.html.erb")
  end
  def new_form
    render("pic_templates/new_photo.html.erb")
  end
  def create_row
    p = Photo.new
    p.source = params.fetch("the_source")
    p.caption = params.fetch("the_caption")
    p.save
    redirect_to("/photos")
  end
  def show_details
    @photo_id = params.fetch("photo_id")
    @photo_entry = Photo.find(@photo_id)
    @photo_source = @photo_entry.source
    @photo_caption = @photo_entry.caption
    @photo_ago = @photo_entry.created_at
    render("pic_templates/show_details.html.erb")
  end
  def edit_photo
    @photo_id = params.fetch("edit_photo_id")
    @photo_to_edit = Photo.find(@photo_id)
    @photo_source = @photo_to_edit.source
    @photo_caption = @photo_to_edit.caption
    @photo_ago = @photo_to_edit.created_at
    render("pic_templates/edit_photo.html.erb")
  end
  def update_row
    @photo_id = params.fetch("update_photo_id")
    p = Photo.find(@photo_id)
    p.source = params.fetch("the_source")
    p.caption = params.fetch("the_caption")
    p.save
    redirect_to("/photos/"+@photo_id)
  end
  def delete_row
    the_id = params.fetch("delete_photo_id")
    the_photo = Photo.find(the_id)
    the_photo.destroy
    
    redirect_to("/photos")
  end
end