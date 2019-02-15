class PicturesController < ApplicationController
  def index
    render("pic_templates/all_photos.html.erb")
  end
  def new_form
    render("pic_templates/new_photo.html.erb")
  end
  def create_row
    render("pic_templates/create_row.html.erb")
  end
  def show_details
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