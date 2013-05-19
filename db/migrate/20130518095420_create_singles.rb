class CreateSingles < ActiveRecord::Migration
  def change
    create_table :singles do |t|
      t.string :title
      t.datetime :created
      t.string :year
      t.text :info

      t.timestamps
    end
  end
end
