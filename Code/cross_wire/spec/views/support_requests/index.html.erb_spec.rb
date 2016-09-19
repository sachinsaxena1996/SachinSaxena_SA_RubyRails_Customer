require 'rails_helper'

RSpec.describe "support_requests/index", type: :view do
  before(:each) do
    assign(:support_requests, [
      SupportRequest.create!(),
      SupportRequest.create!()
    ])
  end

  it "renders a list of support_requests" do
    render
  end
end
