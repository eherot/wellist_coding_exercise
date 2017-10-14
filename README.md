# Code Exercise
The wellist coding exercise for applicants

## Background / User Need

At Wellist, we match patients and their families to supportive services in various 
categories. 

The users are able to view these recommendations, category by category, and are then able
to "save" and "remove" vendors from their "Support Plan." This plan can also be made public,
with the user able to hide certain services from public view, should they choose.

## Goal
The goal of this exercise is to have you demonstrate a few software choices while
making the failing specs in this project work. This goal is in service of our
overarching goal of having as fair an evaluation of your skills as possible, in order to 
make the best possible hiring decision.

The api endpoint at the heart of this exercise is the endpoint which is used to "save," 
"remove", and "hide" the vendors mentioned above.

One of the challenges of the exercise is that the desired api interface doesn't cleanly
fit the controller base class. 

In this exercise, you are free to change any and all files, including tests, in order to
provide whatever you think is the best implementation of the user need. Use the base class,
don't use the base class, change the base class, change the api spec, all options are on
the table. Answer the customer need as best you can.

We look forward to discussing your solution with you!

## Getting Started

If you don't have a working Ruby on Rails development environment with
Postgres 9.5 installed, we recommend using [Vagrant](https://www.vagrantup.com/)
to get up and running.

### Step 1: Download and install Vagrant

You can get it from the
[Vagrant download page](https://www.vagrantup.com/downloads.html).
You also need [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
if you don't already have it.

### Step 2: Start the box

    vagrant up

This will take several minutes to provision the machine the first
time you run it.

### Step 3: Run the tests

You can use `vagrant ssh` to connect to the vagrant box. Once you do
the code will be mounted at `/vagrant`. So, you should now be able to run
the tests with

    cd /vagrant
    rake

Please feel free to reach out if you have trouble getting to a state where `rake` gives
you the following output:

```
13 examples, 12 failures

Failed examples:

rspec ./spec/models/user_spec.rb:2 # User should have one :wellist
rspec ./spec/models/user_spec.rb:3 # User should have many :wellist_vendors
rspec ./spec/models/vendor_spec.rb:2 # Vendor should have many :wellists
rspec ./spec/models/vendor_spec.rb:3 # Vendor should have many :wellist_users
rspec ./spec/controllers/api/wellist_controller_spec.rb:37 # Api::WellistController DELETE #destroy removes a vendor from the wellist when called with user id and vendor id
rspec ./spec/controllers/api/wellist_controller_spec.rb:49 # Api::WellistController DELETE #destroy removes multiple vendors
rspec ./spec/controllers/api/wellist_controller_spec.rb:63 # Api::WellistController GET #show shows a users wellist, with vendors inline
rspec ./spec/controllers/api/wellist_controller_spec.rb:18 # Api::WellistController PUT #update adds multiple vendors to the wellist
rspec ./spec/controllers/api/wellist_controller_spec.rb:27 # Api::WellistController PUT #update allows us to hide vendors from the wellistry
rspec ./spec/controllers/api/wellist_controller_spec.rb:9 # Api::WellistController PUT #update adds a vendor to the wellist
rspec ./spec/models/wellist_spec.rb:2 # Wellist 
rspec ./spec/models/wellist_spec.rb:3 # Wellist 
```
