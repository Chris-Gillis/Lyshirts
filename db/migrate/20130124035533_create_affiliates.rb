class CreateAffiliates < ActiveRecord::Migration
  def change
    create_table :affiliates do |t|
      t.string :image_url
      t.string :affiliate_url
      t.string :affiliate_site

      t.timestamps
    end
  end
end
