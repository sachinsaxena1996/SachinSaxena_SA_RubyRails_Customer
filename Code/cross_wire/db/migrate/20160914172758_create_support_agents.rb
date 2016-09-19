class CreateSupportAgents < ActiveRecord::Migration[5.0]
  def change
    create_table :support_agents do |t|
      t.string :name
      t.integer :employee_number

      t.timestamps
    end
  end
end
