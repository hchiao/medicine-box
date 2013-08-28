require 'open-uri'
require 'json'

class PatientsController < ApplicationController
    def show
        @my_patients = Patient.all
        @find_patient = Patient.find(params[:id])

        FormParser.new.say_hi("Jack")
    end

    def new
        @patient = Patient.new
        #json_object = JSON.parse(open("http://localhost:3000/patients/224.json").read)
        #puts json_object
        recent_posts = HTTParty.get("http://localhost:3000/patients/224.json")
        puts recent_posts
    end

    def create
        @patient = Patient.new(params[:patient])
        #if @patient = Patient.create(params[:patient])
        #    redirect_to new_patient_path
        #end
    end
end
