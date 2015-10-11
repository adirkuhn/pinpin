class PinsController < ApplicationController
  
  # GET /pins
  # GET /pins.json
  def index
  end

  # GET /pins/1
  # GET /pins/1.json
  def show
    @pin = Pin.find(params[:id])
  end

  # GET /pins/new
  def new
    @pin = Pin.new
  end

  # POST /pins
  # POST /pins.json
  def create
    @pin = Pin.new(pin_params)

    if @pin.save
      redirect_to @pin, notice: 'Pin was successfuly created.'
    else
      render :new
    end
  end

  private

    def pin_params
      params.require(:pin).permit(:title, :description)
    end

end
