# == Schema Information
#
# Table name: homes
#
#  id                           :integer          not null, primary key
#  gallery_image_1_title        :string
#  gallery_image_1_description  :string
#  gallery_image_2_title        :string
#  gallery_image_2_description  :string
#  gallery_image_3_title        :string
#  gallery_image_3_description  :string
#  gallery_image_4_title        :string
#  gallery_image_4_description  :string
#  gallery_image_5_title        :string
#  gallery_image_5_description  :string
#  gallery_image_6_title        :string
#  gallery_image_6_description  :string
#  created_at                   :datetime         not null
#  updated_at                   :datetime         not null
#  gallery_image_1_file_name    :string
#  gallery_image_1_content_type :string
#  gallery_image_1_file_size    :integer
#  gallery_image_1_updated_at   :datetime
#  gallery_image_2_file_name    :string
#  gallery_image_2_content_type :string
#  gallery_image_2_file_size    :integer
#  gallery_image_2_updated_at   :datetime
#  gallery_image_3_file_name    :string
#  gallery_image_3_content_type :string
#  gallery_image_3_file_size    :integer
#  gallery_image_3_updated_at   :datetime
#  gallery_image_4_file_name    :string
#  gallery_image_4_content_type :string
#  gallery_image_4_file_size    :integer
#  gallery_image_4_updated_at   :datetime
#  gallery_image_5_file_name    :string
#  gallery_image_5_content_type :string
#  gallery_image_5_file_size    :integer
#  gallery_image_5_updated_at   :datetime
#  gallery_image_6_file_name    :string
#  gallery_image_6_content_type :string
#  gallery_image_6_file_size    :integer
#  gallery_image_6_updated_at   :datetime
#  slider_image_1_file_name     :string
#  slider_image_1_content_type  :string
#  slider_image_1_file_size     :integer
#  slider_image_1_updated_at    :datetime
#  slider_image_2_file_name     :string
#  slider_image_2_content_type  :string
#  slider_image_2_file_size     :integer
#  slider_image_2_updated_at    :datetime
#  slider_image_3_file_name     :string
#  slider_image_3_content_type  :string
#  slider_image_3_file_size     :integer
#  slider_image_3_updated_at    :datetime
#  slider_image_4_file_name     :string
#  slider_image_4_content_type  :string
#  slider_image_4_file_size     :integer
#  slider_image_4_updated_at    :datetime
#
class Home < ApplicationRecord
  has_attached_file :gallery_image_1,
                    styles: { thumb: ['200x121#', :jpg],
                              medium: ['855x519#', :jpg],
                              original: ['1287x782>', :jpg] },
                    convert_options: { thumb: '-quality 75 -strip',
                                       original: '-quality 85 -strip' }
  validates_attachment :gallery_image_1,
                       content_type: { content_type: ['image/jpeg', 'image/gif', 'image/png', 'image/webp'] }

  has_attached_file :gallery_image_2,
                    styles: { thumb: ['200x121#', :jpg],
                              medium: ['855x519#', :jpg],
                              original: ['1287x782>', :jpg]},
                    convert_options: { thumb: '-quality 75 -strip',
                                       original: '-quality 85 -strip' }
  validates_attachment :gallery_image_2,
                       content_type: { content_type: ['image/jpeg', 'image/gif', 'image/png', 'image/webp'] }

  has_attached_file :gallery_image_3,
                    styles: { thumb: ['200x121#', :jpg],
                              medium: ['855x519#', :jpg],
                              original: ['1287x782>', :jpg]},
                    convert_options: { thumb: '-quality 75 -strip',
                                       original: '-quality 85 -strip' }
  validates_attachment :gallery_image_3,
                       content_type: { content_type: ['image/jpeg', 'image/gif', 'image/png', 'image/webp'] }

  has_attached_file :gallery_image_4,
                    styles: { thumb: ['200x121#', :jpg],
                              medium: ['855x519#', :jpg],
                              original: ['1287x782>', :jpg]},
                    convert_options: { thumb: '-quality 75 -strip',
                                       original: '-quality 85 -strip' }
  validates_attachment :gallery_image_4,
                       content_type: { content_type: ['image/jpeg', 'image/gif', 'image/png', 'image/webp'] }

  has_attached_file :gallery_image_5,
                    styles: { thumb: ['200x121#', :jpg],
                              medium: ['855x519#', :jpg],
                              original: ['1287x782>', :jpg]},
                    convert_options: { thumb: '-quality 75 -strip',
                                       original: '-quality 85 -strip' }
  validates_attachment :gallery_image_5,
                       content_type: { content_type: ['image/jpeg', 'image/gif', 'image/png', 'image/webp'] }

  has_attached_file :gallery_image_6,
                    styles: { thumb: ['200x121#', :jpg],
                              medium: ['855x519#', :jpg],
                              original: ['1287x782>', :jpg]},
                    convert_options: { thumb: '-quality 75 -strip',
                                       original: '-quality 85 -strip' }
  validates_attachment :gallery_image_6,
                       content_type: { content_type: ['image/jpeg', 'image/gif', 'image/png', 'image/webp'] }

  has_attached_file :slider_image_1,
                    styles: { thumb: ['200x121#', :jpg],
                              medium: ['855x519#', :jpg],
                              original: ['1287x782>', :jpg]},
                    convert_options: { thumb: '-quality 75 -strip',
                                       original: '-quality 85 -strip' }
  validates_attachment :slider_image_1,
                       content_type: { content_type: ['image/jpeg', 'image/gif', 'image/png', 'image/webp'] }

  has_attached_file :slider_image_2,
                    styles: { thumb: ['200x121#', :jpg],
                              medium: ['855x519#', :jpg],
                              original: ['1287x782>', :jpg]},
                    convert_options: { thumb: '-quality 75 -strip',
                                       original: '-quality 85 -strip' }
  validates_attachment :slider_image_2,
                       content_type: { content_type: ['image/jpeg', 'image/gif', 'image/png', 'image/webp'] }

  has_attached_file :slider_image_3,
                    styles: { thumb: ['200x121#', :jpg],
                              medium: ['855x519#', :jpg],
                              original: ['1287x782>', :jpg]},
                    convert_options: { thumb: '-quality 75 -strip',
                                       original: '-quality 85 -strip' }
  validates_attachment :slider_image_3,
                       content_type: { content_type: ['image/jpeg', 'image/gif', 'image/png', 'image/webp'] }

  has_attached_file :slider_image_4,
                    styles: { thumb: ['200x121#', :jpg],
                              medium: ['855x519#', :jpg],
                              original: ['1287x782>', :jpg]},
                    convert_options: { thumb: '-quality 75 -strip',
                                       original: '-quality 85 -strip' }
  validates_attachment :slider_image_4,
                       content_type: { content_type: ['image/jpeg', 'image/gif', 'image/png', 'image/webp'] }
end
