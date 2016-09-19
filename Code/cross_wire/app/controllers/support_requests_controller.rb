class SupportRequestsController < ApplicationController
  before_action :set_support_request, only: [:show, :edit, :update, :destroy]

  # GET /support_requests
  # GET /support_requests.json
  def index
    if admin_signed_in?
      @support_requests = SupportRequest.all
    elsif customer_signed_in?
      @support_requests = SupportRequest.where(customer_id: current_customer.id)
    elsif support_agent_signed_in?
      @support_requests = SupportRequest.where(support_agent_id: current_support_agent.id)
    end
  end

  # GET /support_requests/1
  # GET /support_requests/1.json
  def show
  end

  # GET /support_requests/new
  def new
    @support_request = SupportRequest.new
  end

  # GET /support_requests/1/edit
  def edit
  end

  # POST /support_requests
  # POST /support_requests.json
  def create
    @support_request = SupportRequest.new_by_customer(support_request_params, current_customer)
    respond_to do |format|
      if @support_request.save
        format.html { redirect_to @support_request, notice: 'Support request was successfully created.' }
        format.json { render :show, status: :created, location: @support_request }
      else
        format.html { render :new }
        format.json { render json: @support_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /support_requests/1
  # PATCH/PUT /support_requests/1.json
  def update
    respond_to do |format|
      if @support_request.update(support_request_params)
        format.html { redirect_to @support_request, notice: 'Support request was successfully updated.' }
        format.json { render :show, status: :ok, location: @support_request }
      else
        format.html { render :edit }
        format.json { render json: @support_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /support_requests/1
  # DELETE /support_requests/1.json
  def destroy
    @support_request.destroy
    respond_to do |format|
      format.html { redirect_to support_requests_url, notice: 'Support request was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def download_closed_tickets_last_month
      @support_requests = SupportRequest.closed_in_last_month
      html = render_to_string(:template => "support_requests/download_closed_tickets_last_month.pdf.erb")
      pdf = WickedPdf.new.pdf_from_string(html)
      send_data(pdf,
        :filename => "last_month_closed_requests.pdf",
        :disposition => 'attachment')
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_support_request
      @support_request = SupportRequest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def support_request_params
      params.require(:support_request).permit(:request_type, :support_agent_id, :customer_id, :status, :support_request_identity, :id, :created_at, :updated_at)
    end
end
