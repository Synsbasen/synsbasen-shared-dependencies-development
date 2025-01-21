# SynsbasenSharedDependenciesDevelopment

This gem provides a collection of development dependencies shared across Synsbasen's applications, including essential libraries for web application performance, monitoring, and error tracking. Intended for internal use.

# Installation
Add the gem to your Gemfile:

```ruby
gem 'synsbasen_shared_dependencies_development', github: 'Synsbasen/synsbasen-shared-dependencies-development', branch: 'master'
```

# Rubocop
To ensure that our code is consistently formatted, we use Rubocop. To setup Rubocop, add the following to your `.rubocop.yml` file:

```yaml
# Omakase Ruby styling for Rails
inherit_gem:
  rubocop-rails-omakase: rubocop.yml
```

Then, run `bundle exec rake git_hooks:install` to install the pre-commit hooks.
