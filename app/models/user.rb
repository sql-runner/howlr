class User < ActiveRecord::Base
  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true

  has_many :followers, through: :follower_relationships
  has_many :follower_relationships, class_name: "FollowRelationship",
            foreign_key: :followed_user_id

  has_many :followed_users, through: :followed_user_relationships
  has_many :followed_user_relationships, class_name: "FollowRelationship",
            foreign_key: :follower_id

  has_many :howls

  has_many :liked_howls, through: :likes

  def timeline
    Howl.where(user_id: followed_user_ids + [id]).order(created_at: :desc)

  end

  def follow(user)
    followed_users << user 
  end

  def unfollow(user)
    followed_users.delete user
  end


  def to_param
    username
  end
end
