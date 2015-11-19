class CharactersController < ApplicationController

  def index
    @game = Game.find(params[:game_id])
    @characters = Character.all
  end

end
