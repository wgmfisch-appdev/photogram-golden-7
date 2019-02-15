class PicturesController < ApplicationController
  def index
    @photo_list = Photo.all
    
    render("pic_templates/all_photos.html.erb")
  end
  def new_form
    render("pic_templates/new_photo.html.erb")
  end
  def create_row
    render("pic_templates/create_row.html.erb")
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
    render("pic_templates/edit_photo.html.erb")
  end
  def update_row
    render("pic_templates/update_row.html.erb")
  end
  def delete_row
    render("pic_templates/delete_row.html.erb")
  end
end