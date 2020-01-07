class Tweet < ApplicationRecord
  belongs_to :user
  validates :tweet_content, :presence => true
  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  def address
    [street, city, zip].compact.join(", ")
  end

  def address_changed?
    street_changed? || city_changed? || zip_changed?
  end
end
