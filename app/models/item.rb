class Item < ActiveRecord::Base
	belongs_to :section

	validates :title, presence: true
end
