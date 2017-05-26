class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end

  def new
    @episode = Episode.new
  end

  def show
    @episode = Episode.find(params[:id])
  end

  def create
    @episode = Episode.create(episode_params)
    redirect_to episode_path(@episode)
   end


private

    def episode_params
        params.require(:episode).permit(:date, :number)
    end



end
