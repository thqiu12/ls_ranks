class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
        t.integer      :total
        t.integer        :location
        t.integer        :equipment
        t.integer     :curriculum
        t.integer      :othersupport
        t.integer      :atmosphere
        t.timestamps
    end
  end
end
