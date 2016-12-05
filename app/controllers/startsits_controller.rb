class StartsitsController < ApplicationController
  before_action :set_startsit, only: [:show, :update, :destroy]

  # GET /startsits
  def index
    @startsits = Startsit.all

    render json: @startsits
  end

  # GET /startsits/1
  def show
    render json: @startsit
  end

  # POST /startsits
  def create
    @startsit = Startsit.new(startsit_params)

    if @startsit.save
      render json: @startsit, status: :created, location: @startsit
    else
      render json: @startsit.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /startsits/1
  def update
    if @startsit.update(startsit_params)
      render json: @startsit
    else
      render json: @startsit.errors, status: :unprocessable_entity
    end
  end

  # DELETE /startsits/1
  def destroy
    @startsit.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_startsit
      @startsit = Startsit.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def startsit_params
      params.require(:startsit).permit(:player, :team)
    end
end
