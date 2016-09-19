require 'rails_helper'

RSpec.describe "support_requests/show", type: :view do
  before(:each) do
    @support_request = assign(:support_request, SupportRequest.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
