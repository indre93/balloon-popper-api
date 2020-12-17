class GameSerializer

  def initialize(game_object)
    @game = game_object
  end

  def to_serialized_json
    @game.to_json(:include => {
      :user => {:only => [:user_id, :username]}
    }, :except => [:user_id, :updated_at])
  end

end
