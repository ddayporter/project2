class CharactersController < ApplicationController

  def index
    @game = Game.find(params[:game_id])
    @characters = @game.characters  # only the characters for this game
  end

end
