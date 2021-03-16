# frozen_string_literal: true

require "graphql/rake_task"

# To generate schema files, run:
# `bin/rake graphql:schema:dump`

GraphQL::RakeTask.new(
  schema_name:  "PancakesSchema",
  directory:    Rails.root.join("app", "graphql"),
  idl_outfile:  "schema.graphql",
  json_outfile: "schema.json",
)
