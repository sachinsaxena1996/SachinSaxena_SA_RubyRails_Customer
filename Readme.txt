1. Instructions to install and configure prerequisites or dependencies, if any

Run following command to install gems: 
bundle

2. Instructions to create and initialize the database (if required)
To create db :
rake db:create

To run migrations :
rails db:migrate

3. Assumptions you have made ­ it is good to explain your thought process and the assumptions
you have made: 
Following is a flow diagram:

Admin
     |                                
Logs in                   Customer directly Signs up to portal and sends Service Requests
     |          To                               |   
sends invitation---Support_Agent---- accepts Invitation                                      
                                      & Resolves & 
                                        closes the Service Requests

4. Requirements that you have not covered in your submission, if any
  Not able to cover all rspec examples due to time constraint.
5. Instructions to configure and prepare the source code to build and run properly
 Use Sublime text editor
6. Issues you have faced while completing the assignment, if any:
 Configuring and using devise for authentication of multiple models in application for Admin, Customer, SupportAgent models.
7. Constructive feedback for improving the assignment:

Users Credentials										Password
cross_admin@mailinator.com		--> Admin			----> 123456
support_agent_18@mailinator.com	--> Support Agent	----> 123456
customer_1@mailinator.com		--> Customer		----> 123456