# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/1-models.rb

# **************************
# Don't change or move
Contact.destroy_all
# **************************

# 1a. check out the schema file
# 1b. check out the model file

# 2. create 1-2 new contacts for each company (they can be made up)
apple = Company.where({ name: "Apple Inc." })[0]
apple_id = apple.id

values = { first_name: "John",
            last_name: "Smith",
            email: "john.smith@email.com",
            phone_number: "888-333-5555",
            company_id: apple_id }
contact1 = Contact.new(values)
contact1.save

amazon = Company.where({ name: "Amazon.com, Inc." })[0]
amazon_id = amazon.id

contact2 = Contact.new
contact2.first_name = "Jane"
contact2.last_name = "Doe"
contact2.email = "jane.doe@email.com"
contact2.phone_number = "999-555-3333" 
#contact2 = Contact.new(values)
contact2.company_id = amazon_id
contact2.save

tesla = Company.where({ name: "Tesla Inc." })[0]
tesla_id = tesla.id

values = { first_name: "Elon",
            last_name: "Musk",
            email: "elon.musk@tesla.com",
            phone_number: "777-444-5555",
            company_id: tesla_id }
contact3 = Contact.new(values)
contact3.save
# 3. write code to display how many contacts are in the database AND each contact's info (name, email), e.g.:

# ---------------------------------
# Contacts: 4
# Andy Jassy - andy@amazon.com
# Craig Federighi - craig@apple.com
# Elon Musk - elon@tesla.com
# Tim Cook - tim@apple.com

puts "Contacts: #{Contact.all.count}"
for contact in Contact.all
    company = Company.where({ id: contact.company_id })[0]
    print "#{company.name}: "
    print "#{contact.first_name} #{contact.last_name} - #{contact.email}\n"
    
end

