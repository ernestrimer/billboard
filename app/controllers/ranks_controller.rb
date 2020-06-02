class RanksController < ApplicationController
  def index
    @ranks = Rank.all 
  end

  def show
    @rank = Rank.find(params[:id])
  end

  def new
    @rank = Rank.new
  end

  def edit
    @rank = Rank.find(params[:id])
  end
end
