class Item < ActiveRecord::Base
	belongs_to :team
	validates :title, presence: true

	enum position: [ :to_do, :busy, :done ]
end
