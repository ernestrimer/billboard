class ArtistsController < ApplicationController
  before_action :set_artist, only: [:show, :edit, :destroy, :update]
  before_action :set_rank

  def index
    @artists = @rank.artists

  end

  def show
    @artist = Artist.find(params[:id])

  end

  def new
    @artist = @rank.artists.new
    render partial: "form"
  end

  def create
    @artist = @rank.artists.new(artist_params)
    if @artist.save
      redirect_to [@rank, @artist]
    else
      render :new
    end
  end

  def edit
    render partial: "form"
  end

def update
  @artist = Artist.find(params[:id])
  if  @artist.update(artist_params)
    redirect_to [@rank, @artist]
  else
    render :edit
  end
end

def destroy
  @artist.destroy
  redirect_to rank_artists_path(@rank)
end


private

def artist_params
  params.require(:artist).permit(:artist_name, :genre)
end

def set_artist
  @artist = Artist.find(params[:id])
end

def set_rank
  @rank = Rank.find(params[:rank_id])
end

end
