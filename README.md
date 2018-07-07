Mobisol Coding Challenge:

My Approach:

Created a CustomAttributes Module which extend ActiveSupport::Concern and include a Module corresponding to each client.
The client Module will extend ActiveSupport::Concern and uses ActiveRecord::Store to store these custom attributes.

In the User Model, CustomAttributes Module is included and custom attributes are declared and defined using attr_accessor keyword.

Rspec is used for writing test cases.

To test:

1. Clone this repository.
2. Navigate to the project directory in terminal.
3. Run "bundle install"
4. Run "rails c".
5. Now create a User object with default attributes like name, phone_number and email.
    `user = User.create(name: "Harry Potter", phone_number: "999999999", email: "harry@potter.com")`
6. You should be able to get a user object. Now add custom attributes shoe_size and nickname by running:
    `user.shoe_size = "8"`
    and `user.nickname = "harry"`
7. Similarly, you can create a user object by passing shoe_size and nickname in the 5th step.
  `user = User.create(name: "Harry Potter", phone_number: "999999999", email: "harry@potter.com", shoe_size: "8", nickname: "harry")`
8. For running the test cases, run "rspec spec" in the terminal.
