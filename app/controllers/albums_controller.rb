class AlbumsController < ApplicationController
  def index
    @album = Albums.all
  end

  def new
    @album = Album.new
  end

  def create
    @album = Album.new(params[:album])
    if @album.save
      redirect_to @album, notice: 'Album successfully created.'
    else
      render action: 'new'
    end
  end

  def edit
    @album = Album.find(params[:id])
  end

  def destroy
  end

  def show
    @albums = Album.all
  end
end
