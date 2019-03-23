# TeamManager
A Rails engine that provides functionality for:
- Authentication
- Teams
- Registrations
- Payments
- Tournaments

## Usage
1. Mount the application as a Rails plugin per the example in spec/dummy/config/routes.rb
    mount TeamManager::Engine => "/team_manager"

## Installation
Add this line to your application's Gemfile:

### Dependencies

1. Bootstrap
1. Simple Form gem

```ruby
gem 'team_manager'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install team_manager
```

### Database Setup
From the parent application:

1. Copy the migrations from the engine to the parent application

    bails railties:install:migrations

1. Run the migrations from the parent application

    bails db:migrate

This has to be done every time there is a new migration in the engine

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
