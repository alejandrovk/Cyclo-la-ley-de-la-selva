class CreateLevels < ActiveRecord::Migration
  def change
    create_table :levels do |t|
    	t.string :name
    	t.integer :difficult
    	t.integer :ecosystem_id
      	t.timestamps
    end
  end
end
