class AddUserableTypeUserableIdToUser < ActiveRecord::Migration[5.0]
  def change
  	change_table :users do |t|
	  t.string :userable_type
	  t.integer :userable_id
	end
  end
end
