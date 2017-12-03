class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :school_info
end
