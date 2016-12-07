class PlayerRankingsRbsController < ApplicationController
  before_action :set_player_rankings_rb, only: [:show, :update, :destroy]

  # GET /player_rankings_rbs
  def index
    @player_rankings_rbs = PlayerRankingsRb.all

    render json: @player_rankings_rbs
  end

  # GET /player_rankings_rbs/1
  def show
    render json: @player_rankings_rb
  end

  # POST /player_rankings_rbs
  def create
    @player_rankings_rb = PlayerRankingsRb.new(player_rankings_rb_params)

    if @player_rankings_rb.save
      render json: @player_rankings_rb, status: :created, location: @player_rankings_rb
    else
      render json: @player_rankings_rb.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /player_rankings_rbs/1
  def update
    if @player_rankings_rb.update(player_rankings_rb_params)
      render json: @player_rankings_rb
    else
      render json: @player_rankings_rb.errors, status: :unprocessable_entity
    end
  end

  # DELETE /player_rankings_rbs/1
  def destroy
    @player_rankings_rb.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_player_rankings_rb
      @player_rankings_rb = PlayerRankingsRb.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def player_rankings_rb_params
      params.require(:player_rankings_rb).permit(:name, :remaining_schedule)
    end
end
