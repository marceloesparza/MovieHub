class DocumentaryFilmsController < ApplicationController
  def index
    @documentaryfilms = DocumentaryFilm.all
  end
  
  def new
    @documentaryfilm = DocumentaryFilm.new
  end

  def create
    @documentaryfilm = DocumentaryFilm.new(documentaryfilm_params)
    if @documentaryfilm.save
      redirect_to documentary_films_path, notice: "Documental creada con éxito"
    else
      render :new
    end
  end

  private
  def documentaryfilm_params
    params.require(:documentary_film).permit(:name, :synopsis, :director)
  end
end
