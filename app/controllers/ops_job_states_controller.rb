class OpsJobStatesController < ApplicationController
  # before_action :set_ops_job_state, only: [:show, :edit, :update, :destroy]
  # before_action :set_ops_job_state

  # GET /ops_job_states
  # GET /ops_job_states.json
  def index
    @ops_job_state = OpsJobState.new
    @ops_job_states = OpsJobState.jobstate_w_jobname('MLH_TEST1.JOB1')
  end

  # GET /ops_job_states/1
  # GET /ops_job_states/1.json
  def show
  end

  # GET /ops_job_states/new
  # def new
  #   @ops_job_state = OpsJobState.new
  # end

  # GET /ops_job_states/1/edit
  # def edit
  # end

  # POST /ops_job_states
  # POST /ops_job_states.json
  # def create
  #   @ops_job_state = OpsJobState.new(ops_job_state_params)
  #
  #   respond_to do |format|
  #     if @ops_job_state.save
  #       format.html { redirect_to @ops_job_state, notice: 'Ops job state was successfully created.' }
  #       format.json { render :show, status: :created, location: @ops_job_state }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @ops_job_state.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # PATCH/PUT /ops_job_states/1
  # PATCH/PUT /ops_job_states/1.json
  # def update
  #   respond_to do |format|
  #     if @ops_job_state.update(ops_job_state_params)
  #       format.html { redirect_to @ops_job_state, notice: 'Ops job state was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @ops_job_state }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @ops_job_state.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # DELETE /ops_job_states/1
  # DELETE /ops_job_states/1.json
  # def destroy
  #   @ops_job_state.destroy
  #   respond_to do |format|
  #     format.html { redirect_to ops_job_states_url, notice: 'Ops job state was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    # def set_ops_job_state
    #   @ops_job_state = OpsJobState.find(params[:id])
    # end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ops_job_state_params
      params.require(:ops_job_state).permit(:job_name, :date_started, :date_completed, :status, :message)
    end
end
