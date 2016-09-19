module ServiceRequestsHelper
	def options_for_sr_type
		options_for_select([["Upload Speed issue", "Upload Speed issue"], ["Download Speed issue", "Download Speed issue"],
			["Internet not Working", "Internet not Working"], ["No Network Signals", "No Network Signals"],
			["Weak Network Signals", "Weak Network Signals"]])
	end

	def options_for_state
		options_for_select([["New", "New"], ["Work In Progress", "Work In Progress"], ["Closed", "Closed"]])
	end
end