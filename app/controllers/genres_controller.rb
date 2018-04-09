class GenresController < ApplicationController

  def show
    @genre = Genre.find(params[:id])
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.new(post_params(:name, :bio))
    @genre.save
    redirect_to genre_path(@genre)


  def update
    @genre = Genre.find(params[:id])
    @genre.update(post_params(:name, :bio))
    redirect_to genre_path(@genre)
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def post_params(*args)
    params.require(:genre).permit(*args)
  end

end
