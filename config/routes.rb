Rails.application.routes.draw do

  #READ
  #Build a way to see a list of all rows in the table, e.g., by visiting http://localhost:3000/directors

  #Build a way to see the details of an individual row, e.g., by visiting http://localhost:3000/directors/4

  #DELETE
  #Build a way to delete an individual row, e.g., by visiting http://localhost:3000/delete_director/4
  #Add links to the index page and show pages to make it easier to visit these URLs.

  #CREATE
  #Build a way to see a blank form to add a new row, e.g., by visiting http://localhost:3000/directors/new_form
  #Build the complementary action to receive inputs from that form and actually save them into a new row.

  #UPDATE
  #Build a way to see a pre-populated form to edit an existing row, e.g., by visiting http://localhost:3000/directors/4/edit_form
  #Build the complementary action to receive inputs from that form and actually update the existing row with them.

end



#bundle install
#rails g model director name:string bio:text dob:string image_url:string
#rails g model actor name:string bio:text dob:string image_url:string
#rails g model movie title:string year:integer duration:integer description:text image_url:string
#rake db:migrate
#rake db:seed
