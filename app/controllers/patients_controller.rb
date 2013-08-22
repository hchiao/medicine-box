class PatientsController < ApplicationController
    def show
        @my_patients = Patient.find(:all)
    end

    def new
    end
end
