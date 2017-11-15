class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
        t.string      :nickname
        t.text        :email
        t.string      :password
        t.text        :image
        t.timestamps

      t.timestamps null: false
    end
  end
end
