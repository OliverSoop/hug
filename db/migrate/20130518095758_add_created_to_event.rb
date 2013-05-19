class AddCreatedToEvent < ActiveRecord::Migration
  def change
    add_column :events, :created, :datetime
  end
end
