# == Schema Information
#
# Table name: distributors
#
#  id           :integer          not null, primary key
#  name         :string
#  phone        :string
#  phone2       :string
#  phone3       :string
#  mail         :string
#  website      :string
#  address      :string
#  logo_url     :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  country_code :string           not null
#

class Distributor < ApplicationRecord
  has_attached_file :logo,
                    styles: { thumb: ["128x128#", :jpg] },
                    convert_options: { thumb: "-quality 75 -strip",
                                       original: "-quality 85 -strip" }
  validates_attachment :logo,
                       content_type: { content_type: ["image/jpeg", "image/gif", "image/png", "image/webp"] }

  validates :name, presence: true, uniqueness: true

  scope :by_name, ->{ order(:name)}
  scope :by_country, ->{ order(:country_code)}
  scope :unique_country_codes, ->{ select(:country_code).distinct }


  def country_name
    country = ISO3166::Country[country_code]
    country.translations[I18n.locale.to_s] || country.name
  end
end
