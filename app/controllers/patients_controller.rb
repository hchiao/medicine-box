require 'open-uri'
require 'json'

class PatientsController < ApplicationController
    def show
        @my_patients = Patient.all
        #@find_patient = Patient.find(params[:id])
        @my_json = @my_patients.to_json

        FormParser.new.say_hi("Jack")
    end

    def new
        @patient = Patient.new
    end

    def create
        #@patient = Patient.new(params[:patient])
        puts "name: " + params[:patient][:name] + "------------------------------------------------------"

        #hack
        if @patient = Patient.create(name: params[:patient][:name])
            redirect_to root_path
        end
        
        #if @patient = Patient.create(params[patient_params])
        #    redirect_to new_patient_path
        #end
    end

    def json_stuff # Need to add routing
        #json_object = JSON.parse(open("http://localhost:3000/patients/224.json").read)
        #puts json_object
        #recent_posts = HTTParty.get("http://localhost:3000/patients/224.json")
        #puts recent_posts
    end

    private
    def patient_params
        params.require(:patient).permit(:name)
    end
end
