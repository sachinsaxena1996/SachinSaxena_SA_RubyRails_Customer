class AddIndexToSupportRequest < ActiveRecord::Migration[5.0]
  def change
    add_index :support_requests, :support_agent_id
    add_index :support_requests, :customer_id
  end
end
