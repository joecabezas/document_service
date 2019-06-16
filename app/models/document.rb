class Document < ApplicationRecord
  include KeyConcern
  has_many :versions, dependent: :destroy
end
