class PlayerRankingsTesController < ApplicationController
  before_action :set_player_rankings_te, only: [:show, :update, :destroy]

  # GET /player_rankings_tes
  def index
    @player_rankings_tes = PlayerRankingsTe.all

    render json: @player_rankings_tes
  end

  # GET /player_rankings_tes/1
  def show
    render json: @player_rankings_te
  end

  # POST /player_rankings_tes
  def create
    @player_rankings_te = PlayerRankingsTe.new(player_rankings_te_params)

    if @player_rankings_te.save
      render json: @player_rankings_te, status: :created, location: @player_rankings_te
    else
      render json: @player_rankings_te.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /player_rankings_tes/1
  def update
    if @player_rankings_te.update(player_rankings_te_params)
      render json: @player_rankings_te
    else
      render json: @player_rankings_te.errors, status: :unprocessable_entity
    end
  end

  # DELETE /player_rankings_tes/1
  def destroy
    @player_rankings_te.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_player_rankings_te
      @player_rankings_te = PlayerRankingsTe.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def player_rankings_te_params
      params.require(:player_rankings_te).permit(:name, :remaining_schedule)
    end
end
