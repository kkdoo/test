#Task #1
```
# function parse_template
# purpose: parses a string, looking for known elements in the format %%PARAM1%PARAM2%%
#          
# arguments: string    -- this is the input string which can be anything, including nil and an empty string
#                      -- parse the string, looking for known elements in the format %%PARAM1%PARAM2%%
#
# returns:   hash      -- returns a hash repesenting the elements parsed from the input string
#                      -- for example, if input string is "Hello %%first_name%text%.  Welcome to %%place%text%%.  See you on %%start%date%%!"
#                      --              then parse_template returns {"first_name" => "text", "place" => "text", "start" => "date}
#                      -- returns an empty hash if the input string is nil or empty
def parse_template(string)
  hash = {}
  if string && !string.empty?
    # the question is:  parse string and return a hash
    
  end
  return hash
end


# the code below should produce the result described in the comments

parse_template "Hello %%first_name%text%.  Welcome to %%place%text%%.  See you on %%start%date%%!"
```

#Task #2
```
create table people (
  id int,
  name varchar(100)
);

create table pets (
  id int,
  owner_id int,
  name varchar(100)
);

insert people values (1,'John');
insert people values (2,'Steve');
insert people values (3,'Mary');
insert people values (4,'Doug');
insert people values (5,'Mark');
insert people values (6,'Helen');

insert pets values (1,1,'Spot');
insert pets values (2,1,'Bailey');
insert pets values (3,3,'Max');
insert pets values (4,4,'Charlie');
insert pets values (5,4,'Lucy');
insert pets values (6,7,'Maggie');
insert pets values (7,4,'Daisy');


# query 1:  write a query that shows people who have no pets

# query 2:  write a query that pets that don't have an owner

# query 3:  write one query, without using a stored procedure or cursor, that sets Helen as the owner of all pets who do not have an owner
```
