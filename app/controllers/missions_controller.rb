class MissionsController < ApplicationController

  def index
  end

  def new
  end

  def create
    @play = Play.find(params[:play_id])
    @play.missions.create(character_id: params[:character_id])
    redirect_to play_path(@play)
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
    @mission = Mission.find(params[:id])
    @play = @mission.play
    @mission.destroy
    redirect_to play_path(@play)
  end



end
