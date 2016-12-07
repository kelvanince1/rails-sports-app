class SitsController < ApplicationController
  before_action :set_sit, only: [:show, :update, :destroy]

  # GET /sits
  def index
    @sits = Sit.all

    render json: @sits
  end

  # GET /sits/1
  def show
    render json: @sit
  end

  # POST /sits
  def create
    @sit = Sit.new(sit_params)

    if @sit.save
      render json: @sit, status: :created, location: @sit
    else
      render json: @sit.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /sits/1
  def update
    if @sit.update(sit_params)
      render json: @sit
    else
      render json: @sit.errors, status: :unprocessable_entity
    end
  end

  # DELETE /sits/1
  def destroy
    @sit.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sit
      @sit = Sit.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def sit_params
      params.require(:sit).permit(:player, :sit_em)
    end
end
