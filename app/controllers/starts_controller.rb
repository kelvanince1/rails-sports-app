class StartsController < ApplicationController
  before_action :set_start, only: [:show, :update, :destroy]

  # GET /starts
  def index
    @starts = Start.all

    render json: @starts
  end

  # GET /starts/1
  def show
    render json: @start
  end

  # POST /starts
  def create
    @start = Start.new(start_params)

    if @start.save
      render json: @start, status: :created, location: @start
    else
      render json: @start.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /starts/1
  def update
    if @start.update(start_params)
      render json: @start
    else
      render json: @start.errors, status: :unprocessable_entity
    end
  end

  # DELETE /starts/1
  def destroy
    @start.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_start
      @start = Start.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def start_params
      params.require(:start).permit(:player, :start_em)
    end
end
