class CreateCompleteds < ActiveRecord::Migration
  def change
    create_table :completeds do |t|
    	t.belongs_to :user
  		t.belongs_to :level
      	t.timestamps
    end
  end
end
