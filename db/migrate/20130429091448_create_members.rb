class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.date :from
      t.date :to
      t.text :instruments

      t.timestamps
    end
  end
end
