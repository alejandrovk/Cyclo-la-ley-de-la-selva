class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
    	t.string :name
    	t.integer :life_time
    	t.string :animal_type
    	t.text :url 
      	t.timestamps

    end
  end
end
