class CreateSupportRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :support_requests do |t|
      t.string :request_type
      t.integer :support_agent_id
      t.integer :customer_id
      t.string :status

      t.timestamps
    end
  end
end
