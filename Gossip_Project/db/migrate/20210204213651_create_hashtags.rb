class CreateHashtags < ActiveRecord::Migration[5.2]
  def change
    create_table :hashtags do |t|
      t.string :title
      t.belongs_to :tag, index: true
      t.belongs_to :gossip, index: true

      t.timestamps
    end
  end
end
