class CreateFollowRelationships < ActiveRecord::Migration
  def change
    create_table :follow_relationships do |t|
      t.references :followed_user, index: true
      t.references :follower, index: true

      t.timestamps
    end
  end
end
