class CreateSchoolInfos < ActiveRecord::Migration
  def change
    create_table :school_infos do |t|
        t.string      :name
        t.text        :text
        t.text        :image
        t.integer     :score_id
        t.string      :province
        t.timestamps
    end
  end
end
