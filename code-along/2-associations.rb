# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/2-associations.rb

# 1. Query all of the contacts at Apple Inc.
apple = Company.where( {name: "Apple Inc." })[0]

# You can write this directly in the model company.rb to skip this step
#       Contact.where({ company_id: apple_id })
# which can be reduced to:
#       has_many :contact
# or:
#       belongs_to : contact

puts "Apple contacts:"

# and then use the built-in function to just say apple.contacts to skipa step
for contact in apple.contacts
    puts "#{contact.first_name} #{contact.last_name} - #{contact.company.name}"
    # uses the has_many and belongs_to to associate the two models/dbs, makes previous step possible
end

# 2. add association to contacts in Company model


# 3. add association to company in Contact model
