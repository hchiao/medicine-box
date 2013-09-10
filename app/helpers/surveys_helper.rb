module SurveysHelper
    def link_to_add_fields(name, f, association)
        new_object = f.object.class.reflect_on_association(association).klass.new
        fields = f.fields_for(association, new_object, :child_index => "new_#{association}") do |form_rule|
            render(association.to_s.singularize, :f => form_rule)
        end
        link_to_function(name, "add_fields(this, \"#{association}\", \"#{escape_javascript(fields)}\")")
    end
end
