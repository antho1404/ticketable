require "ticketable/version"

module Ticketable
  def is_ticketable
    has_many :tickets, as: :ticketable, dependent: :destroy
    include InstanceMethods
  end
  module InstanceMethods
    def ticketable?
      true
    end
  end
end
ActiveRecord::Base.extend Ticketable
