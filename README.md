# Hit me up Rails 🤙

> Just another Rails app template

`hmu-rails` aims to provide a general starting point for rails applications building off the Rails principle of convention over configuration.

## What does it do?

### Application

### Background jobs

- Installs [sidekiq](https://sidekiq.org/) for running background jobs with ActiveJob.
- Installs [sidekiq-scheduler](https://github.com/moove-it/sidekiq-scheduler) for scheduling background jobs

### Documentation

- Creates a `docs` directory to store project documentation
- Creates a `docs/index.md` file with a minimal template for documentation
- Creates a `docs/adr` directory to log technical decisions using the [Architectural Decision Record format](https://cognitect.com/blog/2011/11/15/documenting-architecture-decisions) with a README and template.
- Creates up a sample `README.md` file and links back to your docs

### Linting

**Backend**

- Installs [rubocop](https://github.com/rubocop-hq/rubocop) and creates a standard rubocop file.

**Frontend**

- Installs eslint and creates an eslint file for rails projects.

### Testing tools

**Backend**

- Installs [rspec-rails](https://github.com/rspec/rspec-rails) as the core test framework
- Installs [rspec-mocks](https://github.com/rspec/rspec-mocks) to support mocks and stubs in tests
- Installs [simplecov](https://github.com/colszowka/simplecov) to report test coverage
- Installs [factory_bot_rails](https://github.com/thoughtbot/factory_bot_rails) for fixtures / test data
- Installs [webmock](https://github.com/bblimke/webmock) for mocking HTTP calls in tests for example to APIs
- Installs [climate_control](https://github.com/thoughtbot/climate_control) for modifying environment variables in tests
- Merges the `spec_helper.rb` and `rails_helper.rb` files into `spec_helper.rb` to [avoid having two configuration files](https://docs.publishing.service.gov.uk/manual/conventions-for-rails-applications.html#testing-utilities).

**Frontend**

- Installs [Jest for frontend testing](https://jestjs.io/docs/en/getting-started)
- Creates stub tests

### Secrets and configuration

- Installs [dotenv] to support use of environment variables in development.
- Adds the `.env` file to `.gitignore` so it isn't accidentally checked into version control.
- Creates a `example.env` file to support sharing of example environment variables between developers.
- _Deviation_ - Explore use of encrypted `config/credentials.yml.enc` file for storing secrets.

### Frontend assets

- Configures webpack to build frontend assets.

## How to use it

### Prerequisites

You will need the following dependencies installed on your machine.

- [Postgres](https://www.postgresql.org/download/)
- [Redis](https://redis.io/download)
- [Rails 5+](https://guides.rubyonrails.org/getting_started.html)
- [Foreman](https://github.com/ddollar/foreman) or [Hivemind](https://github.com/DarthSim/hivemind) as your local Procfile based process manager

### Running it locally

1. `git clone https://github.com/mathewtrivett/hmu-rails.git` the repository to where you store your code.
2. `cd` to where you want to create your Rails project.
3. Run `rails new APP_NAME -d postgresql -m path/to/hmu-rails/template.rb`

## Contributing

### Adding new Gems
