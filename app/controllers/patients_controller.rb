class PatientsController < ApplicationController
    def show
        @my_patients = Patient.all
        FormParser.new.say_hi("Jack")
    end

    def new
        @patient = Patient.new
    end

    def create
        @patient = Patient.new(params[:patient])
        #if @patient = Patient.create(params[:patient])
        #    redirect_to new_patient_path
        #end
    end
end
