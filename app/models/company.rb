class Company < ApplicationRecord
    has_many :contacts
    # This could be rewritten as: 
    #   def contacts
    #       Contact.where({ company_id: id })
    #   end
    has_many :activities
end
