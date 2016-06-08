class List < ActiveRecord::Base
  belongs_to :user, inverse_of: :lists
end
