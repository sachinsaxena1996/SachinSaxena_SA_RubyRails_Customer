require 'rails_helper'

RSpec.describe "support_agents/index", type: :view do
  before(:each) do
    assign(:support_agents, [
      SupportAgent.create!(),
      SupportAgent.create!()
    ])
  end

  it "renders a list of support_agents" do
    render
  end
end
