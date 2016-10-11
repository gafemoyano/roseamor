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
                    styles: { thumb: ["150x150>", :jpg] },
                    convert_options: { thumb: "-quality 75 -strip",
                                       original: "-quality 85 -strip" }
  validates_attachment :logo,
                       content_type: { content_type: ["image/jpeg", "image/gif", "image/png", "image/webp"] }

  validates :name, presence: true
  validates :country_code, presence: true

  scope :by_name, ->{ order(:name)}
  scope :by_country, ->{ all.sort_by { |dist| dist.country_name}}
  scope :unique_country_codes, ->{ distinct(:country_code).pluck(:country_code).sort! }
  scope :country, -> (country_code) { where country_code: country_code }

  def country_name
    country = ISO3166::Country[country_code]
    country.translations[I18n.locale.to_s] || country.name
  end

  def self.country_name(code)
    country = ISO3166::Country[code]
    country.translations[I18n.locale.to_s] || country.name
  end

  def self.country_codes_by_name
    unique_country_codes
        .map{|code| {code: code, name: country_name(code)}}
        .sort_by { |elem| elem[:name]}
        .map { |elem| elem[:code]}
  end
end
