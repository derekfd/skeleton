class FandoLeaguesController < ApplicationController
  before_action :set_fando_league, only: [:show, :edit, :update, :destroy]

  # GET /fando_leagues
  # GET /fando_leagues.json
  def index
    @fando_leagues = FandoLeague.all
  end

  # GET /fando_leagues/1
  # GET /fando_leagues/1.json
  def show
  end

  # GET /fando_leagues/new
  def new
    @fando_league = FandoLeague.new
  end

  # GET /fando_leagues/1/edit
  def edit
  end

  # POST /fando_leagues
  # POST /fando_leagues.json
  def create
    @fando_league = FandoLeague.new(fando_league_params)

    respond_to do |format|
      if @fando_league.save
        format.html { redirect_to @fando_league, notice: 'Fando league was successfully created.' }
        format.json { render :show, status: :created, location: @fando_league }
      else
        format.html { render :new }
        format.json { render json: @fando_league.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fando_leagues/1
  # PATCH/PUT /fando_leagues/1.json
  def update
    respond_to do |format|
      if @fando_league.update(fando_league_params)
        format.html { redirect_to @fando_league, notice: 'Fando league was successfully updated.' }
        format.json { render :show, status: :ok, location: @fando_league }
      else
        format.html { render :edit }
        format.json { render json: @fando_league.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fando_leagues/1
  # DELETE /fando_leagues/1.json
  def destroy
    @fando_league.destroy
    respond_to do |format|
      format.html { redirect_to fando_leagues_url, notice: 'Fando league was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fando_league
      @fando_league = FandoLeague.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fando_league_params
      params.require(:fando_league).permit(:name, :user_id, :contest_date, :max_user)
    end
end
