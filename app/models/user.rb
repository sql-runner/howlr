class User < ActiveRecord::Base
  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true

  has_many :followers, through: :followed_user_relationships
  has_many :followed_user_relationships, class_name: "FollowRelationship",
            foreign_key: :follower_id

  has_many :followed_users, through: :follower_relationships
  has_many :follower_relationships, class_name: "FollowRelationship",
            foreign_key: :followed_user_id

  has_many :howls

  def to_param
    username
  end
end
