class CreateEcosystems < ActiveRecord::Migration
  def change
    create_table :ecosystems do |t|
    	t.string :name
    	t.timestamps
    end
  end
end
