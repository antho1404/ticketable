class Ticket < ActiveRecord::Base
  belongs_to :<%= name.singularize.downcase %>
  belongs_to :ticketable, polymorphic: true
  attr_accessible :status, :content, :ticketable
  attr_accessible :<%= name.singularize.downcase %>_id

  [:open, :in_progress, :close].each_with_index do |status, i|
    define_method "is_#{status.to_s}?" do
      self.status == i
    end

    define_method "#{status}!" do
      self.update_attribute :status, i
    end

    scope status.to_s.pluralize.to_sym, -> { where(status: i) }
  end
end
