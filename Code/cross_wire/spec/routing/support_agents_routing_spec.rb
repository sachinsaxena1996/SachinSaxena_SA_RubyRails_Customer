require "rails_helper"

RSpec.describe SupportAgentsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/support_agents").to route_to("support_agents#index")
    end

    it "routes to #new" do
      expect(:get => "/support_agents/new").to route_to("support_agents#new")
    end

    it "routes to #show" do
      expect(:get => "/support_agents/1").to route_to("support_agents#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/support_agents/1/edit").to route_to("support_agents#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/support_agents").to route_to("support_agents#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/support_agents/1").to route_to("support_agents#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/support_agents/1").to route_to("support_agents#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/support_agents/1").to route_to("support_agents#destroy", :id => "1")
    end

  end
end
