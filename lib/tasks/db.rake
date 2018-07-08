# frozen_string_literal: true

namespace :db do
  task reseed: ['environment', 'db:seed']
end
