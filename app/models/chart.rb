class Chart < ActiveRecord::Base
    belongs_to(:patient)

    has_many(:contracted_diseases)
    has_many(:diseases, :through => :contracted_diseases)
end
