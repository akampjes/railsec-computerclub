class AddUrlToUsers < ActiveRecord::Migration
  def change
    add_column :users, :homepage, :text
  end
end
