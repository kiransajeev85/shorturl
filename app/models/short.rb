class Short < ApplicationRecord
before_create :url_token
validates :long_url, format: URI::regexp(%w[http https])
has_many :visitors


private
def url_token
      if self.short_url.blank?
	      self.short_url =  (Time.now.to_f * 1000).to_i.to_s(32)
      end
end

end
