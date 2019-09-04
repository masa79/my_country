class Local < ApplicationRecord
  belongs_to :user
  has_many :images, dependent: :delete_all
  has_many :comments

  accepts_nested_attributes_for :images
end
