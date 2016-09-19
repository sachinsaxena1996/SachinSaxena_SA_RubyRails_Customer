require 'rails_helper'

RSpec.describe "support_requests/edit", type: :view do
  before(:each) do
    @support_request = assign(:support_request, SupportRequest.create!())
  end

  it "renders the edit support_request form" do
    render

    assert_select "form[action=?][method=?]", support_request_path(@support_request), "post" do
    end
  end
end
