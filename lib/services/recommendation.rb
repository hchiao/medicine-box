class Recommendation
    def make(answers)
        recommend = []
        answers.each do |k,v|
            rule = Rule.find(v[:rule_id])
            ans = v[:pick]=="true" ? rule.true: rule.false
            recommend << ans
        end
        recommend.to_sentence
    end
end
