class BusesController < ApplicationController

  def index
    @buses  = Bus.all
  end

  def new
    @bus = Bus.new
  end

  def create
    @bus = Bus.new(bus_params)
    if @bus.save
      redirect_to buses_path
    else
      render 'new'
    end
  end

  def edit
    @bus = Bus.find(params[:id])
  end

  def update
    @bus = Bus.find(params[:id])

    if( @bus.update(bus_params))
      redirect_to buses_path
    else
      render 'edit'
    end

  end

  def destroy
    @bus = Bus.find(params[:id])
    @bus.destroy!

    redirect_to buses_path
  end

  def show
    @bus = Bus.find(params[:id])
  end

  def json
    @bus = Bus.find(params[:id])

    render :json => @bus

  end

  private
  def bus_params
    params.require(:bus).permit!
  end

end
