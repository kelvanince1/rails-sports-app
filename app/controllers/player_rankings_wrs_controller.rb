class PlayerRankingsWrsController < ApplicationController
  before_action :set_player_rankings_wr, only: [:show, :update, :destroy]

  # GET /player_rankings_wrs
  def index
    @player_rankings_wrs = PlayerRankingsWr.all

    render json: @player_rankings_wrs
  end

  # GET /player_rankings_wrs/1
  def show
    render json: @player_rankings_wr
  end

  # POST /player_rankings_wrs
  def create
    @player_rankings_wr = PlayerRankingsWr.new(player_rankings_wr_params)

    if @player_rankings_wr.save
      render json: @player_rankings_wr, status: :created, location: @player_rankings_wr
    else
      render json: @player_rankings_wr.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /player_rankings_wrs/1
  def update
    if @player_rankings_wr.update(player_rankings_wr_params)
      render json: @player_rankings_wr
    else
      render json: @player_rankings_wr.errors, status: :unprocessable_entity
    end
  end

  # DELETE /player_rankings_wrs/1
  def destroy
    @player_rankings_wr.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_player_rankings_wr
      @player_rankings_wr = PlayerRankingsWr.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def player_rankings_wr_params
      params.require(:player_rankings_wr).permit(:name, :remaining_schedule)
    end
end
