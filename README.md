# Diary app

I set up my Gemfiles, Rspec and config.ru files

I then looked at the first user story, created a domain model and created a feature test

**As a user**\
**So that I can keep a daily diary**\
**I want to be able to add a new Diary Entry**

I also create a database model and used that to create a new database using psql.

In order to complete this step I had to go a step further back and create a way for the  
test to see the saved addition to the database.  

The only way I know of currently is to create an .all method within the Diary class to  
feedback the entries in the Diary database.

So I created a feature test which looking for the returned entry. I passed this is the simplest  
possible way by just returning the param using a variable in views.

I then wrote unit test for a Diary class. One testing an all method which returned the entries
and one for an add method which returned an entry passed into the method as an argument

In order to allow testing for these I had to create a testing environment and testing database.
I created the 'diary_test' environment and database and put a conditional statement inside the .all and
.add methods within the diary class.

I then focussed on passing the .all method test by creating a variable which iterates over each row
of the diary database and return the diary['entry'] as a string.

Once this passed I wrote the .add method by inserting the argument into a new row in the entry column within the database.

Finally I rewrote the controller code to call the Diary.add(entry) and Diary.all.last to add and return the
entry in views.

**As a user**\
**So that I can identify my entry in future**\
**I want to give each Diary Entry a title**

In order to complete this user story:
* I need to decide how to display this information and change the feature test accordingly
* I need to add an additional column to my diary and test databases
* I need to create a field to fill out the title
* I need to add an argument to the .add method to accept a title



## Must Have



**As a user**\
**So that I can identify my entry in future**\
**I want to give each Diary Entry a title**

**As a user**\
**So that I can browse my previous entries**\
**I want to see a list of Diary Entry Titles**

**As a user**\
**So that I can read my previous entries**\
**I want to click on a title to see the full Diary Entry**

## Should Have

**As a user**\
**So that I can correct an error**\
**I want to be able to edit the Diary Entry**

**As a user**\
**So that I can keep my diary tidy**\
**I want to be able to delete a Diary Entry**

**As a user**\
**So that I can reflect on a previous diary entry**\
**I want to be able add a Comment to a Diary Entry**

**As a user**\
**So that I can see my past reflections**\
**I want to see associated Comments when viewing a Diary Entry**

## Could Have

**As a user**\
**So that I can make entries easier to browse**\
**I want to be able to add Tags to an Entry**

**As a user**\
**So that I can see different types of entry**\
**I want to be able to filter Diary Entries by Tag**
