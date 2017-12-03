class SchoolInfo < ActiveRecord::Base
  has_many :scores
  has_many :comments
  # def self.search(search)
  #   if search
  #      where(['name LIKE ?', "%#{search}%"])
  #   else
  #     all
  #   end

end
