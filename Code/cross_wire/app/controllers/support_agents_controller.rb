class SupportAgentsController < ApplicationController
  before_action :set_support_agent, only: [:show, :edit, :update, :destroy]

  # GET /support_agents
  # GET /support_agents.json
  def index
    @support_agents = SupportAgent.all
  end

  # GET /support_agents/1
  # GET /support_agents/1.json
  def show
  end

  # GET /support_agents/new
  def new
    @support_agent = SupportAgent.new
  end

  # GET /support_agents/1/edit
  def edit
  end

  # POST /support_agents
  # POST /support_agents.json
  def create
    @support_agent = SupportAgent.new(support_agent_params)

    respond_to do |format|
      if @support_agent.save
        format.html { redirect_to @support_agent, notice: 'Support agent was successfully created.' }
        format.json { render :show, status: :created, location: @support_agent }
      else
        format.html { render :new }
        format.json { render json: @support_agent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /support_agents/1
  # PATCH/PUT /support_agents/1.json
  def update
    respond_to do |format|
      if @support_agent.update(support_agent_params)
        format.html { redirect_to @support_agent, notice: 'Support agent was successfully updated.' }
        format.json { render :show, status: :ok, location: @support_agent }
      else
        format.html { render :edit }
        format.json { render json: @support_agent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /support_agents/1
  # DELETE /support_agents/1.json
  def destroy
    @support_agent.destroy
    respond_to do |format|
      format.html { redirect_to support_agents_url, notice: 'Support agent was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_support_agent
      @support_agent = SupportAgent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def support_agent_params
      params.require(:support_agent).permit(:name, :user_id, :employee_number)
    end
end
