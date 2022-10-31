# frozen_string_literal: true

class PancakesSchema < GraphQL::Schema
  query(Types::QueryType)
  mutation(Types::MutationType)
  subscription(Types::SubscriptionType)

  # Opt in to the new runtime (default in future graphql-ruby versions)
  use GraphQL::Execution::Interpreter
  use GraphQL::Analysis::AST
  use GraphQL::Subscriptions::ActionCableSubscriptions, redis: Redis.new(url: ENV["REDIS_URL"])

  # Add built-in connections for pagination
  use GraphQL::Pagination::Connections
end
