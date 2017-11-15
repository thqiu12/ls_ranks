class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
        t.text        :comments
        t.string      :school_id
        t.text        :user_id
        t.timestamps
    end
  end
end
