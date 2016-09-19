require 'test_helper'

class SupportAgentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @support_agent = support_agents(:one)
  end

  test "should get index" do
    get support_agents_url
    assert_response :success
  end

  test "should get new" do
    get new_support_agent_url
    assert_response :success
  end

  test "should create support_agent" do
    assert_difference('SupportAgent.count') do
      post support_agents_url, params: { support_agent: { employee_number: @support_agent.employee_number, name: @support_agent.name, user_id: @support_agent.user_id } }
    end

    assert_redirected_to support_agent_url(SupportAgent.last)
  end

  test "should show support_agent" do
    get support_agent_url(@support_agent)
    assert_response :success
  end

  test "should get edit" do
    get edit_support_agent_url(@support_agent)
    assert_response :success
  end

  test "should update support_agent" do
    patch support_agent_url(@support_agent), params: { support_agent: { employee_number: @support_agent.employee_number, name: @support_agent.name, user_id: @support_agent.user_id } }
    assert_redirected_to support_agent_url(@support_agent)
  end

  test "should destroy support_agent" do
    assert_difference('SupportAgent.count', -1) do
      delete support_agent_url(@support_agent)
    end

    assert_redirected_to support_agents_url
  end
end
