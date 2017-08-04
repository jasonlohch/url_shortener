class Url < ApplicationRecord

  validates :long_url, uniqueness: true,
  format: { :with => URI::regexp(['http','https']), :message => "is an invalid URL"}

  def shorten
   self.short_url = SecureRandom.hex(3)
 end
 
end
