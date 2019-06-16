module KeyConcern
  extend ActiveSupport::Concern

  included do
    after_initialize :add_key

    def add_key
      self.key ||= SecureRandom.hex
    end
  end
end
