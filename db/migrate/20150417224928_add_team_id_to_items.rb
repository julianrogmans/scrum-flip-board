class AddTeamIdToItems < ActiveRecord::Migration
  def change
    add_column :items, :team_id, :integer
  end
end
