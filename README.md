# README

### Stack
  - Ruby 2.4
  - Rails 5.1.5
  - Postgresql 9.6

### Installation all dependencies
```sh
$ bundle
```

### DB tuning
```sh
$ rake db:setup
```

### Email settings 
```ruby
  # /config/environments/development.rb or /config/environments/production.rb
  config.action_mailer.smtp_settings = {
    address: 'smtp.gmail.com',
    port: 587,
    user_name: 'username@gmail.com',
    password: 'gmail_password',
    authentication: 'plain',
    enable_starttls_auto: true
  }

  # and /app/mailers/checker_mailer.rb
  class CheckerMailer < ApplicationMailer
    default from: 'notifications@example.com'
```

### Whenever settings
By default, the development environment, for production, you need to comment out the line
```ruby
  # /config/schedule.rb
  set :environment, 'development'
```

### Run Whenever 
```sh
$ whenever --update-crontab
$ whenever
```

### Check cron
```sh
$ crontab -l
```

### Stop cron job
```sh
$ whenever -c [identifier]
```
or manually

```sh
$ crontab -e
```
