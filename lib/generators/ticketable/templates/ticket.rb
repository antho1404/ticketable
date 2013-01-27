class Ticket < ActiveRecord::Base
  belongs_to :<%= creator.singularize.downcase %>
  belongs_to :ticketable, polymorphic: true
  attr_accessible :status, :content, :ticketable
end
