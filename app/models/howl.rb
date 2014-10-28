class Howl < ActiveRecord::Base
  belongs_to :user
  belongs_to :content, polymorphic: true
  has_many :liked_howls, through: :likes
end
