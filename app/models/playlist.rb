class Playlist < ActiveRecord::Base
  belongs_to :user
  belongs_to :group
  has_many :videos, dependent: :destroy 
end
