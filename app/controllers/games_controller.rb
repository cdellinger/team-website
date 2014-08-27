class GamesController < ApplicationController
  before_action :set_game, only: [:show, :edit, :update, :destroy]

  # GET /games
  # GET /games.json
  def index
    @team = Team.find(params[:team_id])
    @games = Game.where(:team_id => params[:team_id])
  end

  # GET /games/1
  # GET /games/1.json
  def show
    @team = Team.find(params[:team_id])
  end

  # GET /games/new
  def new
    @game = Game.new
    @team = Team.find(params[:team_id])
  end

  # GET /games/1/edit
  def edit
    @team = Team.find(params[:team_id])
  end

  # POST /games
  # POST /games.json
  def create
    @game = Game.new(game_params)
    @game.team_id = params[:team_id]

    respond_to do |format|
      if @game.save
        format.html { redirect_to team_game_path(params[:team_id], @game), notice: 'Game was successfully created.' }
        format.json { render :show, status: :created, location: @game }
      else
        format.html { render :new }
        format.json { render json: @game.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /games/1
  # PATCH/PUT /games/1.json
  def update
    respond_to do |format|
      if @game.update(game_params)
        format.html { redirect_to team_game_path(params[:team_id], @game), notice: 'Game was successfully updated.' }
        format.json { render :show, status: :ok, location: @game }
      else
        format.html { render :edit }
        format.json { render json: @game.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /games/1
  # DELETE /games/1.json
  def destroy
    @game.destroy
    respond_to do |format|
      format.html { redirect_to games_url, notice: 'Game was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game
      @game = Game.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def game_params
      params.require(:game).permit(:opponent, :kickoff, :location, :map_url, :directions, :team_url, :halftime_snack, :end_of_game_snack, :is_home_game, :our_score, :opponent_score, :team_id)
    end
end
