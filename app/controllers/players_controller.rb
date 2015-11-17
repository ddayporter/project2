class PlayersController < ApplicationController

  before_action :set_player, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def index
    @games = Game.all
  end

  def new
    @game = Game.new
  end

  def create
    @game = current_user.games.new(game_params)
    if @game.save
      flash[:notice] = "#{@game.title} was successfully created."
      redirect_to @game
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @game.update(game_params)
      flash[:notice] = "#{@game.title} was successfully updated."
      redirect_to @game
    else
      render :edit
    end
  end

  def destroy
    @game.destroy
    redirect_to root_path
  end

  private
  def game_params
    params.require(:game).permit(:title, :image, :logo, :num_stars, :purchase_url)
  end

  def set_game
    @game = Game.find(params[:id])
  end

end
