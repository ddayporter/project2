class PlaysController < ApplicationController
  before_action :set_play, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def index
   #no index page for all plays
  end

  def new
    @game = Game.find(params[:game_id])
    @play = Play.new
  end

  def create
    @game = Game.find(params[:game_id])
    @play = current_user.plays.create!(play_params.merge(game: @game))
    if @play.save
      flash[:notice] = "Your game played on #{@play.date} was successfully created."
      redirect_to @board
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @play.update(pin_params)
      flash[:notice] = "Your game played on #{@play.date} was successfully updated."
      redirect_to @play
    else
      render :edit
    end
  end

  def destroy
    @play.destroy
    redirect_to @game
  end

  private
  def play_params
    params.require(:play).permit(:date, :image, :num_floors, :player_one_character, :player_two_character, :player_three_character, :player_four_character, :loot, :tools, :events, :winner)
  end

  def set_play
    @play = Play.find(params[:id])
    @game = Game.find(params[:game_id])
  end
end
