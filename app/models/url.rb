class Url < ActiveRecord::Base
  validates :urlLong, presence: true
  after_create :convert_short

  def convert_short
    self.update_attribute(:urlShort, SecureRandom.hex(6))
  end
end
