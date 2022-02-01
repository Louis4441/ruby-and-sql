class Contact < ApplicationRecord
    # associate contact with company
    belongs_to :company
end
