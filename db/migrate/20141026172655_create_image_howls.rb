class CreateImageHowls < ActiveRecord::Migration
  def change
    create_table :image_howls do |t|

      t.timestamps
    end
  end
end
