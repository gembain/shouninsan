class Shounin < ApplicationRecord
  validates :description, presence: true
  validates :description, exclusion: { in: %w(お世話になっております。) }
  include FriendlyId
  friendly_id :uid
  before_create do
    self.uid = SecureRandom.hex(10)
  end
end
