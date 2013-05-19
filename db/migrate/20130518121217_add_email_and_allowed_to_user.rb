class AddEmailAndAllowedToUser < ActiveRecord::Migration
  def change
    add_column :users, :email, :string
    add_column :users, :allowed, :boolean
  end
end
