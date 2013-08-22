class Disease < ActiveRecord::Base
    belongs_to(:chart)

    has_many(:contracted_diseases)
    has_many(:charts, :through => :contracted_diseases)

    has_one(:treatment)
end
