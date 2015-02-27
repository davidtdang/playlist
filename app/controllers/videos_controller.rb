class VideosController < ApplicationController

  def index
    videos = Video.all
    render json: videos
  end

  def create
    video = Video.new(video_params)
    if video.save
      render json: video
    end
  end

  def destroy
    video = Video.find(params[:id])
    video.destroy
    head :no_content
  end

  def update
    video = Video.find(params[:id])
    video.update(video_params)
    render json: video
  end

  private
  def video_params
    params.require(:video).permit(:title, :description, :thumbnail, :videoId)
  end
end
