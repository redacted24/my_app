class Project < ApplicationRecord
  has_one_attached :overview_image
  has_many_attached :more_overview_images
end
