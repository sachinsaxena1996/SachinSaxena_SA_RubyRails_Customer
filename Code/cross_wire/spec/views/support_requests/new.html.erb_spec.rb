require 'rails_helper'

RSpec.describe "support_requests/new", type: :view do
  before(:each) do
    assign(:support_request, SupportRequest.new())
  end

  it "renders new support_request form" do
    render

    assert_select "form[action=?][method=?]", support_requests_path, "post" do
    end
  end
end
