class AddRateToProducts < ActiveRecord::Migration
  def change
    add_column :comments, :ls_name, :text
    add_column :users, :nickname, :text
  end
end
