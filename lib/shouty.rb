class Person
	attr_accessor :location, :last_heard_message

	def initialize(location, shoutbox)
		@location = location
		@shoutbox = shoutbox
		@shoutbox.add_person(self)
	end

	def shouts(message)
		@shoutbox.deliver(message, self)
	end

	def hears(message)
		@last_heard_message = message
	end
end

class Shoutbox

	def initialize
		@people = []
	end

	def add_person(person)
		@people.push(person)
	end

	def deliver(message, shouter)
		@people.each do |person|
			distance_between = person.location - shouter.location
			if(distance_between.abs <= 1000)
				person.hears(message)
			end
		end
	end

end
