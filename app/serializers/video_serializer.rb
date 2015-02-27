class VideoSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :thumbnail, :videoId
  belongs_to :playlist, include: true
end
