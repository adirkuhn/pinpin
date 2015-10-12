class PinsController < ApplicationController

  before_action :find_pin, only: [:show, :edit, :update]

  # GET /pins
  # GET /pins.json
  def index
  end

  # GET /pins/1
  # GET /pins/1.json
  def show
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

  # GET /pins/1/edit
  def edit
  end

  # PATCH/PUT /pins/1
  # PATCH/PUT /pins/1.json
  def update
    if @pin.update(pin_params)
      redirect_to @pin, notice: 'Pin was successfuly updated.'
    else
      render :edit, alert: @pin.errors
    end
  end

  private

    def find_pin
      @pin = Pin.find(params[:id])
    end

    def pin_params
      params.require(:pin).permit(:title, :description)
    end

end
