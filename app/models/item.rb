class Item < ActiveRecord::Base
	belongs_to :section

	validates :title, presence: true
	validates :description, presence: true
end
