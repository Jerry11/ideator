class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.text:description
      t.string:auther
      t.timestamps null: false
    end
  end
end
