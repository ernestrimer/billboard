class RanksController < ApplicationController
  # before_action :set_rank, only: [:show, :edit, :update, :destroy]
  
  def index
    @ranks = Rank.all 
    # render index.html.erb
  end

  def show
    @rank = Rank.find(params[:id])
    # render show.html.erb
  end

  def new
    @rank = Rank.new
    # render new.html.erb
    render partial: 'form'
  end

  def edit
    @rank = Rank.find(params[:id])
    # render edit.html.erb edit form
    render partial: 'form'
  end

  def create
    @rank = Rank.new(rank_params)
    if @rank.save
      redirect_to ranks_path
    else
      render :new
    end
  end

  def update
    @rank = Rank.find(params[:id])
    if @rank.update(rank_params)
      redirect_to ranks_path
    else
      render :edit
    end
  end

  def destroy
    @rank = Rank.find(params[:id])
    @rank.destroy
    redirect_to ranks_path
  end

  private 
    def rank_params
      params.require(:rank).permit(:current_rank, :last_week, :total_weeks)
    end
    # def set_rank
    #   @rank = Rank.find(params[:id])
    # end

end