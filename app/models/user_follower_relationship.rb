class UserFollowerRelationship < ApplicationRecord
  # the user posting stuff
  belongs_to :follower
  # the user who want to follow above users stuff
  belongs_to :follower, class_name: 'User'
end
