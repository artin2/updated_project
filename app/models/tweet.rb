class Tweet < ApplicationRecord
  belongs_to :user
  validates :tweet_content, :presence => true
end
