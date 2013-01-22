class RenameShirtFields < ActiveRecord::Migration
  def change
  	rename_column :shirts, :site, :affiliate_link
  end
end
