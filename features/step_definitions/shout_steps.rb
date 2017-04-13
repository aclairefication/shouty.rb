require "shouty"

Given(/^Mike has entered a shout message that is (\d+) characters$/) do |message_length|
  pending # express the regexp above with the code you wish you had
end

When(/^Mike attempts to shout$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^shouting fails$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^the system tells Mike shout result$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^shouting succeeds$/) do
  pending # express the regexp above with the code you wish you had
end

Given(/^Carol is (\d+) feet away from Mike$/) do |distance|
  shoutbox = Shoutbox.new
  @mike = Person.new(0, shoutbox)
  @carol = Person.new(distance.to_i, shoutbox)
end

When(/^Mike shouts "(.*?)"$/) do |message|
  @mike.shouts(message)
  @mikes_message = message
end

Then(/^Carol should not hear Mike's shout$/) do
  if @carol.last_heard_message == @mikes_message
  	raise "Carol heard Mike's message"
  end
end

Then(/^Carol should hear Mike's shout$/) do
  if @carol.last_heard_message != @mikes_message
  	raise "Carol did not hear Mike's message but was in range"
  end
end
