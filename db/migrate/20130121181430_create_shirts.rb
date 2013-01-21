class CreateShirts < ActiveRecord::Migration
  def change
    create_table :shirts do |t|
      t.string, :image_url
      t.string, :site
      t.string :caption

      t.timestamps
    end
  end
end
