class SerieTvsController < ApplicationController
  def index
    @serietvs = SerieTv.all
  end
  
  def new
    @serietv = SerieTv.new
  end

  def create
    @serietv = SerieTv.new(serietv_params)
    if @serietv.save
      redirect_to serie_tvs_path, notice: "Serie creada con éxito"
    else
      render :new
    end
  end

  private
  def serietv_params
    params.require(:serie_tv).permit(:name, :synopsis, :director)
  end

end
