class GenresController < ApplicationController

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.new(params_all)
    @genre.save
    redirect_to @genre
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.find(params[:id])
    @genre.update(params_all)
    redirect_to genre_path(@genre)
  end

  def show
    @genre = Genre.find(params[:id])
  end

private

  def params_all
    params.require(:genre).permit(:name)
  end

end
