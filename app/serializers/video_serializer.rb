class VideoSerializer < ActiveModel::Serializer
  attributes :id, :author, :title, :link, :uid
end
