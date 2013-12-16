# Kato

Library that will allow you to post messages to [kato](https://kato.im) room.

No API to read room history at the moment.

## Installation

Add this line to your application's Gemfile:

    gem 'kato-rb'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install kato-rb

## Usage

Go to your room integrations page, search for "HTTP POST" integration, make
sure you have switched it **on**, use Room ID provided at that page instead of
`room_id` in instructions below:

    require 'kato'

    room = Kato::Room.new("room_id")
    room.post("Andrei", "Hello **world**", {:color => "green", :renderer => "markdown"})

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
