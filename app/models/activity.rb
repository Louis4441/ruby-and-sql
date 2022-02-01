class Activity < ApplicationRecord
    belongs_to :salesperson_id
    belongs_to :contact_id
end
