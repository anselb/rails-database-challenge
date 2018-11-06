class Restaurant < ApplicationRecord
  validates :name, presence: true
  validates :website, format: { with: /^(http:\/\/www\.|https:\/\/www\.|http:\/\/|https:\/\/)?[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?$/, message: 'URL must be valid'}
  validates :website, format: { without: /google.com$/, message: 'Google is not your website'}
  validates :owner, presence: true
end
