class Flat < ApplicationRecord
  validates :picture_url, presence: true, format: { with: URI::DEFAULT_PARSER.make_regexp(%w[http https]) }
end
