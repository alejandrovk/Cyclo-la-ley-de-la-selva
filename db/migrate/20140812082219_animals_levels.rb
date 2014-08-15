class AnimalsLevels < ActiveRecord::Migration
  def change
  	create_table :animals_levels do |t|
  		t.belongs_to :animal
  		t.belongs_to :level
  	end
  end
end

