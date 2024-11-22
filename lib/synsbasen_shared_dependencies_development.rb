# frozen_string_literal: true

require "better_errors"
require "binding_of_caller"
require "dockerfile-rails"
require "dotenv-rails"
require "factory_bot_rails"
require "pry"
require "rack-mini-profiler"
require "rubocop"
require "web-console"
require "byebug" if defined?(Byebug)

require_relative "synsbasen_shared_dependencies_development/version"
require_relative "synsbasen_shared_dependencies_development/spring"

# Load Rake tasks
if defined?(Rake)
  load File.expand_path('tasks/git_hooks.rake', __dir__)
end
