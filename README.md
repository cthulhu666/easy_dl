# EasyDl

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'easy_dl'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install easy_dl

## Usage

```haml
= definition_list_for(@person) do |d|
  = d.item :name
  = d.item :surname
  = d.item :born do |person|
    = person.date_of_birth.year
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
