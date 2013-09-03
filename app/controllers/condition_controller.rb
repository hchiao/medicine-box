class ConditionController < ApplicationController
  def dynamic_form
      # 1.get rules obj
      # 2.create rules form
      @rules_model = RuleProcessor.new.get_json('test.json')
  end

  def create_ans #TODO need to change to POST 
      # 3. get form data
      #form_model = params[]
      form_model = "dummy_form_model"
      rules_model = RuleProcessor.new.get_json('test.json')

      @ans_model = RecommendationGenerator.new.recommend(form_model, rules_model)
  end

  def output
      json = RuleProcessor.new.get_json('test.json')
      #RuleProcessor.new.store_json(json)
      @obj_string = json.to_s
  end
end
