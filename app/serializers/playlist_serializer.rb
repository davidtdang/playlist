class PlaylistSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :videos, include: true
end
