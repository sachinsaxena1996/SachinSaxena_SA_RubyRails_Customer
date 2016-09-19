require 'rails_helper'

RSpec.describe "SupportAgents", type: :request do
  describe "GET /support_agents" do
    it "works! (now write some real specs)" do
      get support_agents_path
      expect(response).to have_http_status(200)
    end
  end
end
