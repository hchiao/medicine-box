class RecommendationGenerator
    def recommend(form_model,rules_model)
        array = []
        #@string = rules_model["rule1"].first['condition']
        rules_model["rule1"].each do |hash|
            array << hash['condition']
        end


        form_model + " ---------- " + array.to_sentence
    end
end
