class AddContentRemoveColumnTable < ActiveRecord::Migration
  def change
    add_column :howls, :content_type, :string
    add_column :howls, :content_id, :integer

    Howl.all.each do |howl|
      word_howl = WordHowl.create!(body: howl.content)
      howl.content_type = "WordHowl"
      howl.content_id = word_howl.id
      howl.save!
    end

    remove_column :howls, :content
  end
end
