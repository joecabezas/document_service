class Version < ApplicationRecord
  include KeyConcern

  belongs_to :document

  has_one_attached :file
end
