class SaveMyLife < ActiveRecord::Migration
  def change
	remove_column :papers, :author_id
  end
end
