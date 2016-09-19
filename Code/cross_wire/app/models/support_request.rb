class SupportRequest < ApplicationRecord
	belongs_to :customer
	belongs_to :support_agent
	delegate :name, to: :support_agent, :prefix => true

	scope :closed_in_last_month, -> {
 		 where('(updated_at BETWEEN ? AND ?) And status=? ', 1.month.ago.beginning_of_month , 1.month.ago.end_of_month, 'Closed')
	}

	def self.new_by_customer(support_request_params, current_customer)
		support_request = SupportRequest.new(support_request_params)
		offset = rand(SupportAgent.count)
	    rand_agent = SupportAgent.offset(offset).first
	    support_request.support_agent_id = rand_agent.id
	    support_request.customer_id = current_customer.id
	    support_request.status = "New"
	    support_request.support_request_identity = "SRN"+ rand_agent.name[0..1].upcase + rand(100000000).to_s
	    support_request
	end
end
