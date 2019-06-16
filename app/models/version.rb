class Version < ApplicationRecord
  belongs_to :document

  has_one_attached :file
end
