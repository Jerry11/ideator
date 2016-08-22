class ChangeAuthorSpelling < ActiveRecord::Migration
  def change
    rename_column :ideas, :auther, :author
  end
end
