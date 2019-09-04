class LocalsController < ApplicationController
   
  def index
    @image = Image.find(6).url
  end

  def new
    @local = Local.new
    @image = Image.new
    @local.images.build
  end

  def create
    @local = Local.new(local_params)
    if @local.save
      @image = Image.new(image_params)
      @image.save
      redirect_to action: "index"
    else
      render :new
    end
  end

  private

  def local_params
    params.require(:local).permit(
      :title,
      :prefecture,
      :city, 
      :restaurant,
      :supermarket,
      :department,
      :tourist_spot,
      :station,
      :interchange,
      :description,
      images_attributes: [:url]
    ).merge(user_id: current_user.id)
  end

  def image_params
    local_id = @local.id
    params.require(:images).require("0").permit(:url).merge(local_id: local_id)
  end
  
end