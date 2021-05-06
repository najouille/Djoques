class DjoquesController < ApplicationController
  before_action :set_djoque, only: %i[ show edit update destroy toggle_like ]

  # GET /djoques or /djoques.json
  def index
    @djoques = Djoque.all
  end

  # GET /djoques/1 or /djoques/1.json
  def show
  end

  def toggle_like
    like = current_djoker.likes.where(djoque: @djoque).first_or_create
    redirect_to @djoque
  end

  # GET /djoques/new
  def new
    @djoque = Djoque.new
  end

  # POST /djoques or /djoques.json
  def create
    @djoque = Djoque.new(djoque_params)
    @djoque.djoker = current_djoker
    respond_to do |format|
      if @djoque.save
        format.html { redirect_to @djoque, notice: "Votre Djoque à bien été créée :p" }
        format.json { render :show, status: :created, location: @djoque }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @djoque.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /djoques/1 or /djoques/1.json
  def destroy
    @djoque.destroy
    respond_to do |format|
      format.html { redirect_to djoques_url, notice: "Votre Djoque à bien été supprimée :(" }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_djoque
      @djoque = Djoque.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def djoque_params
      params.require(:djoque).permit(:djoke, :date, :like)
    end
end
