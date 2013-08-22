class PatientsController < ApplicationController
    def show
        @my_patients = Patient.find(:all)
    end
end
