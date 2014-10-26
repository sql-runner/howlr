class AddColumnToImageHowls < ActiveRecord::Migration
  def change
    def self.up
      add_attachment :imagehowls, :avatar
    end

    def self.down
      remove_attachment :imagehowls, :avatar
    end
  end
end
