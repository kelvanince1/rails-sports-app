class PlayerRankingsQbsController < ApplicationController
  before_action :set_player_rankings_qb, only: [:show, :update, :destroy]

  # GET /player_rankings_qbs
  def index
    @player_rankings_qbs = PlayerRankingsQb.all

    render json: @player_rankings_qbs
  end

  # GET /player_rankings_qbs/1
  def show
    render json: @player_rankings_qb
  end

  # POST /player_rankings_qbs
  def create
    @player_rankings_qb = PlayerRankingsQb.new(player_rankings_qb_params)

    if @player_rankings_qb.save
      render json: @player_rankings_qb, status: :created, location: @player_rankings_qb
    else
      render json: @player_rankings_qb.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /player_rankings_qbs/1
  def update
    if @player_rankings_qb.update(player_rankings_qb_params)
      render json: @player_rankings_qb
    else
      render json: @player_rankings_qb.errors, status: :unprocessable_entity
    end
  end

  # DELETE /player_rankings_qbs/1
  def destroy
    @player_rankings_qb.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_player_rankings_qb
      @player_rankings_qb = PlayerRankingsQb.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def player_rankings_qb_params
      params.require(:player_rankings_qb).permit(:name, :remaining_schedule)
    end
end
