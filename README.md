# Jonas Hübotter

A student, a dangerously passionate open-source developer, an engineer adoring user-oriented and innovative design.

**https://jonhue.me**

### Development

This project uses [asdf](https://github.com/asdf-vm/asdf) as version manager, [Yarn](https://github.com/yarnpkg/yarn) as JavaScript package manager, and [Bundler](https://github.com/bundler/bundler) for Rubygems.

Dependencies are listed in the [.tool-versions](.tool-versions) file.

1. Clone this repository

    `$ git clone ssh://git@github.com/jonhue/jonhue.git`

2. Install dependencies

    ```
    $ asdf install
    $ yarn install
    $ bundle install
    ```

3. Credentials setup

    Customize [credentials.yml.sample](config/credentials.yml.sample)
    `EDITOR=vim be rails credentials:edit`

    Copy [.env.sample](.env.sample) to `.env` and customize

4. Database setup

    `$ rails db:setup`

5. Start development server

    `$ bundle exec foreman start -f Procfile.dev`

### Testing

This project uses a number of packages for testing and linting:

```
$ bundle exec rspec
$ bundle exec rubocop
$ bundle exec haml-lint
$ yarn run stylelint
$ yarn run eslint
```

### Deployment

The `master` branch of this repository is automatically deployed on Heroku.
