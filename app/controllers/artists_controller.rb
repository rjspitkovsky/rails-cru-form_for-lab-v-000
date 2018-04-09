class ArtistsController < ApplicationController

  def show
    @artist = Artist.find(params[:id])
  end

  def new
    @artist = Artist.new 
  end

  def create
  end

  def update
  end

  def edit
  end

end
