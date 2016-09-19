require 'rails_helper'

RSpec.describe "support_agents/edit", type: :view do
  before(:each) do
    @support_agent = assign(:support_agent, SupportAgent.create!())
  end

  it "renders the edit support_agent form" do
    render

    assert_select "form[action=?][method=?]", support_agent_path(@support_agent), "post" do
    end
  end
end
