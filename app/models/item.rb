class Item < ActiveRecord::Base
	validates :title, presence: true

	enum position: ['ToDo', 'Doing', 'Done']
end
