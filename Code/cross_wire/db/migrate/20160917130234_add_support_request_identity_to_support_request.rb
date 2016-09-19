class AddSupportRequestIdentityToSupportRequest < ActiveRecord::Migration[5.0]
  def change
    add_column :support_requests, :support_request_identity, :string
  end
end
