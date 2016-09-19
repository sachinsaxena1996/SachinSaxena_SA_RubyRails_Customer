require 'rails_helper'

RSpec.describe "support_agents/new", type: :view do
  before(:each) do
    assign(:support_agent, SupportAgent.new())
  end

  it "renders new support_agent form" do
    render

    assert_select "form[action=?][method=?]", support_agents_path, "post" do
    end
  end
end
