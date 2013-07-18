class PhotosController < ApplicationController
  def index
    @photo = Photos.all
  end

  def new
    @photo = Photo.new
  end

  def create

  end

  def edit
  end

  def show
    @photo = Photo.find(params[:id])
  end

  def destroy
  end
end
