class ClientSurveysController < ApplicationController
  before_action :set_client_survey, only: [:show, :edit, :update, :destroy]

  # GET /client_surveys
  # GET /client_surveys.json
  def index
      #redirect_to(new_client_survey_path(:survey_no => params[:target_survey]))
  end

  # GET /client_surveys/1
  # GET /client_surveys/1.json
  def show
  end

  # GET /client_surveys/new
  def new
    @client_survey = ClientSurvey.new
    @target_survey = Survey.find(params[:target_survey])
    @target_survey.rules.each do |rule|
        @client_survey.answers.build(:rule_id => rule.id)
    end
  end

  # GET /client_surveys/1/edit
  def edit
  end

  # POST /client_surveys
  # POST /client_surveys.json
  def create
    @client_survey = create_client_survey

    respond_to do |format|
      if @client_survey.save
        format.html { redirect_to @client_survey, notice: 'Client survey was successfully created.' }
        format.json { render action: 'show', status: :created, location: @client_survey }
      else
        format.html { render action: 'new' }
        format.json { render json: @client_survey.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /client_surveys/1
  # PATCH/PUT /client_surveys/1.json
  def update
    respond_to do |format|
      if @client_survey.update(client_survey_params)
        format.html { redirect_to @client_survey, notice: 'Client survey was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @client_survey.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /client_surveys/1
  # DELETE /client_surveys/1.json
  def destroy
    @client_survey.destroy
    respond_to do |format|
      format.html { redirect_to client_surveys_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_client_survey
      @client_survey = ClientSurvey.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def client_survey_params
      #TODO VERY DANGEROUS
      params.require(:client_survey).permit!
    end

    def create_client_survey
        client_recommendations = Recommendation.new.make(client_survey_params[:answers_attributes])
        ClientSurvey.new do |client|
            client.survey_id = client_survey_params[:survey_id]
            client.recommendations = client_recommendations
            client_survey_params[:answers_attributes].each do |k,v|
            client.answers.new(rule_id: v[:rule_id], pick: v[:pick])
        end
    end

    end
end
