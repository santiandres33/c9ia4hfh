# == Schema Information
#
# Table name: rooms
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  beds        :integer
#  guests      :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  image_url   :string
#

class Room < ActiveRecord::Base
	validates :title, presence: true 
	validates :description, presence: true, length: { maximum: 400 } 
	validates :beds, presence: true, numericality: true
	validates :guests, presence: true, numericality: true
	validates :beds, numericality: { greater_than_or_equal_to: 0}
	validates :guests, numericality: { greater_than_or_equal_to: 0 }
	validates :image_url, presence: true  
end
