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
values = { first_name: "John",
            last_name: "Smith",
            email: "john.smith@email.com",
            phone_number: "8883335065" }
contact1 = Contact.new(values)
contact1.save

values = { first_name: "Jane",
            last_name: "Doe",
            email: "jane.doe@email.com",
            phone_number: "9995553333" }
contact2 = Contact.new(values)
contact2.save

# 3. write code to display how many contacts are in the database AND each contact's info (name, email), e.g.:

# ---------------------------------
# Contacts: 4
# Andy Jassy - andy@amazon.com
# Craig Federighi - craig@apple.com
# Elon Musk - elon@tesla.com
# Tim Cook - tim@apple.com

puts "Contacts: #{Contact.all.count}"
for contact in Contact.all
    puts "#{contact.read_attribute(:first_name)} #{contact.read_attribute(:last_name)} - #{contact.read_attribute(:email)}"
end

