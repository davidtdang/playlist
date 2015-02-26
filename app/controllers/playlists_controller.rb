class PlaylistsController < ApplicationController

  def index
    playlists = Playlist.all
    render json: playlists
  end

  def create
    playlist = Playlist.new(playlist_params)
    if playlist.save
      render json: playlist
    end
  end

  def destroy
    playlist = Playlist.find(params[:id])
    playlist.destroy
    head :no_content
  end

  def update
    playlist = Playlist.find(params[:id])
    playlist.update(playlist_params)
    render json: playlist
  end

  private
  def playlist_params
    params.require(:playlist).permit(:name)
  end
end
