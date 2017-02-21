class Shounin < ApplicationRecord
  validates :description, presence: true
  validates :description, exclusion: { in: %w(お世話になっております。) }
end
