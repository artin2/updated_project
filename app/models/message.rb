class Message < ApplicationRecord
  belongs_to :user
  belongs_to :room

  def timestamp
    created_at.in_time_zone('Yerevan').strftime('%H:%M:%S, %d %B %Y')
  end
end
