require 'rails_helper'
RSpec.describe SupportRequest, type: :model do
	
	context "With valid input" do		
		let(:customer) { create :customer }
	 	let(:support_agent) { create :support_agent }
		
	  it "has new state on create " do
	    sr_request = build(:support_request, support_agent_id: support_agent.id,customer_id: customer.id)
	    expect(sr_request.status).to eq('New')
	  end
	end
end