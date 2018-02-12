module ApplicationHelper   
    def default_title_content   
        if current_organization
            current_organization.name
        else
            'Inventory Store'
        end
    end
end
