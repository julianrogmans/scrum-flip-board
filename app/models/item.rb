class Item < ActiveRecord::Base
	include Bootsy::Container
	belongs_to :team
	validates :title, presence: true

	enum position: [ :to_do, :busy, :done ]
end
