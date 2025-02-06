# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Salesperson.destroy_all
# **************************

# Lab 2: Models
# - We've added data into the companies table.  Next, we'll add data
#   into the salespeople table.  Follow the steps below to insert and
#   read rows of salesperson data.  Update a row.  Afterwards, display
#   how many rows have been inserted into the salespeople table.
#   Lastly, if you want a challenge, try writing code to display the
#   full name of each salesperson.

# 1a. check out the schema file
# 1b. check out the model file

# 2. insert 1-2 rows in salespeople table.

salespeople = Salesperson.all.count


new_salesperson = Salesperson.new


new_salesperson["first_name"] = "Boo"
new_salesperson["last_name"] = "Radley"
new_salesperson["email"] = "boo@gmail.com"
new_salesperson.save
puts new_salesperson.inspect


new_company = Company.new

new_salesperson = Salesperson.new


new_salesperson["first_name"] = "Atticus"
new_salesperson["last_name"] = "Finch"
new_salesperson["email"] = "afinch@gmail.com"
new_salesperson.save
puts new_salesperson.inspect


# 3. write code to display how many salespeople rows are in the database

puts "There are #{Salesperson.all.count} salespeople"

# ---------------------------------
# Salespeople: 2

# 4. modify/update column data for a row in the salespeople table.

boo_data = Salesperson.find_by({"first_name" => "Boo", "last_name" => "Radley"})
boo_data["email"] = "boor@gmail.com"
boo_data.save
puts boo_data.inspect


# CHALLENGE:
# 5. write code to display each salesperson's full name

people = Salesperson.all
for x in people

first_name = x["first_name"]
last_name = x["last_name"]
name = "#{first_name} #{last_name}"
puts name
end


# ---------------------------------
# Salespeople: 2
# Ben Block
# Brian Eng
