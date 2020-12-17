class GamesController < ApplicationController

  def index # GET /games
    games = Game.all.includes(:user)
    render json: GameSerializer.new(games).to_serialized_json
  end

  def create # POST /game
    game = Game.new(game_params)
    if game.save
      render json: GameSerializer.new(game).to_serialized_json
    else
      render jason: { errors: game.errors }
    end
  end

  private

  def game_params
    params.require(:game).permit(:score, :user_id)
  end

end
