# AjaxReveal

AjaxReveal is a small gem built to drastically simplify rendering `foundation` reveals via a remote Ajax call.

## Installation

Ensure Foundation is fully supported within your application. See [Foundation Rails](https://github.com/zurb/foundation-rails) for more details on setting up and installing foundation inside a Rails application.

Then Add this line to your application's Gemfile:

```ruby
gem 'ajax_reveal'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ajax_reveal

## Usage

AjaxReveal uses a new helper method `ajax_reveal` to render any partial within your application into a Foundation Reveal Modal using a remote call to a controller `ajax_reveals_controller` created by this gem.

1. Create a new partial `reveals/_my_test_modal.html.erb`
2. Create a link to open the reveal with `ajax_reveal('Click Me!', :my_test_modal)`
  * by default, AjaxReveal looks for modals inside of a `reveals` folder, if you pass a partial to the `ajax_reveal` method that doesn't exist in the normal context AjaxReveal will look in the `reveals` folder.
  * `ajax_reveal` accepts any partial path even ones with `/` in them. e.g. `ajax_reveal('Click Me!', 'reveals/my_test_modal')`
3. Click the link and see your partial get appended to your document and opened with `.foundation('open')`.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/kylecrat/ajax_reveal. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Foundation::AjaxReveal project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/kylecrat/ajax_reveal/blob/master/CODE_OF_CONDUCT.md).
