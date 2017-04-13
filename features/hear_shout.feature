Feature: Black Friday hyperlocal real-time deals

  On Black Friday, skip the line by responding to the merchant's shout. In order to receive the shout, you must be present to reserve a spot.
  Then, you have a limited window of time to claim your deal.
  When that window expires, if you haven't claimed the deal, the space is released to others present at that time.

  Ubiquitous language:
  - Shouts is the action of sending
  - Shout is the message sent
  - Hear is receiving the shout

  Rules:
  - Receiver must be within distance range
  - Receiver must have enabled shout app to access geolocation
  - Zone radius/range is 1000 feet
  - Message length limit is 500 characters
 
  Personas:
  - Sender is Merchant Mike
  - Receiver is Customer Carol

  Scenario: Mike's shout message is too long
  	Given Mike has entered a shout message that is 501 characters
  	When Mike attempts to shout
  	Then shouting fails
  	And the system tells Mike shout result

  Scenario: Mike's shout message is small enough
  	Given Mike has entered a shout message that is 500 characters
  	When Mike attempts to shout
  	Then shouting succeeds
  	And the system tells Mike shout result

  Scenario: Carol is not in the zone
  	Given Carol is 1001 feet away from Mike
  	When Mike shouts "Anyone here?"
  	Then Carol should not hear Mike's shout

  Scenario: Carol is in the zone
  	Given Carol is 1000 feet away from Mike
  	When Mike shouts "I see you there!"
  	Then Carol should hear Mike's shout