# Ticketable

To make every resource ticketable with different status and to have a following of what you needs to do.

## Installation

Add this line to your application's Gemfile:

    gem 'ticketable'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ticketable

## Usage

First you need to generate your migration and your model.
To do that, simply execute

    $ rails generate ticketable:install Ressource
    
where Ressource is the attached ressource for the ticket. Most of the time the ownership will be for the user but you can put what you needs.


Then, you have to execute your migration and add the following line in your models you want to track with tickets 

    is_ticketable
    
This will add the has_many tickets association and you can then create new tickets like that

    mymodel = MyTicketableModel.first
    mymodel.tickets.create action: :create, user_id: current_user.id
    
When you will display your ticket, the default status will be "open" and if you call the title function of the ticket it will call the translation for 

    ticketable.my_ticketable_model.action

with two parameters:
- resource: previously MyTicketableModel
- by: previously current_user

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
