class Item < ActiveRecord::Base
	validates :title, presence: true

	enum position: [ :to_do, :busy, :done ]
end
