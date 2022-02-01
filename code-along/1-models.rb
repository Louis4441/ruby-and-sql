# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/1-models.rb

# **************************
# Don't change or move
Company.destroy_all
# **************************

# 1a. check out the schema file
# 1b. check out the model file
puts "There were #{Company.all.count} companies in our db."

# 2. create new companies
values = { name: "Apple Inc.", 
            url: "https://apple.com", 
            city: "Cupertino", 
            state: "CA" }

apple = Company.new(values)
apple.save
puts "There are now #{Company.all.count} companies in our db."

# 3. query companies table

# 4. read column values from row

# 5. update attribute value
