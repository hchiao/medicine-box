class RuleProcessor
    def store_json(json)
        json["rule1"].each {|x| Rule.create(x) }
    end
    
    def get_json(filename)
        json = JSON.parse(File.read(filename))
        json
    end
end
