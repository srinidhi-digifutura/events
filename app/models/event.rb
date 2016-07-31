class Event < ActiveRecord::Base
	belongs_to :user
	has_many :assemblies
	validates :title,:venue, :city, :state, :event_date, :ticket_fee,presence: true
	validates :address,:description,length: {minimum: 10}
end
