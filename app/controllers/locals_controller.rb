class LocalsController < ApplicationController
   
  def index
    @locals = Local.all
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

  def show
    @local = Local.find(params[:id])
  end

  def edit
    @local = Local.find(params[:id])
    @image = @local.images
  end

  def destroy
    @local = Local.destroy(params[:id])
    redirect_to root_path
  end

  def update
    @local = Local.find(params[:id])
    if @local.update(local_params)
      @local.images.each do |image|
        image.destroy
      end

      @image = Image.new(image_params)
      @image.save
    else
      render :edit
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
      # images_attributes: [:url]
    ).merge(user_id: current_user.id)
  end

  def image_params
    local_id = @local.id
    params.require(:images).require("0").permit(:url).merge(local_id: local_id)
  end
  
end