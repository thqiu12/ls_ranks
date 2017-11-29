class AddSchoolInfoIdToScores < ActiveRecord::Migration
  def change
    add_column :scores, :school_info_id, :integer
  end
end
