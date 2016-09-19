require 'rails_helper'

RSpec.describe "support_agents/show", type: :view do
  before(:each) do
    @support_agent = assign(:support_agent, SupportAgent.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
