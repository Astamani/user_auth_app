class Profile < ApplicationRecord
  belongs_to :user
  has_one_attached :avatar # for profile picture

end
