class CreateWordHowls < ActiveRecord::Migration
  def change
    create_table :word_howls do |t|
      t.string :body
      t.references :howl, index: true

      t.timestamps
    end
  end
end
