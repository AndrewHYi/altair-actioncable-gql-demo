# frozen_string_literal: true

require 'graphql/rake_task'
require 'open3'

# To generate schema files, run:
# `bin/rake graphql:schema:dump`

GraphQL::RakeTask.new(
  schema_name: 'PancakesSchema',
  directory: Rails.root.join('app', 'graphql'),
  idl_outfile: 'schema.graphql',
  json_outfile: 'schema.json'
)

namespace :graphql do
  namespace :schema do
    desc 'Run SchemaCompator using develop\'s gql schema vs. current branch\'s gql schema'
    task compare: :environment do
      old_schema, = Open3.capture2('git', 'show', 'develop:app/graphql/schema.graphql')
      new_schema = File.read(Rails.root.join('app', 'graphql', 'schema.graphql'))

      system('bin/schema_comparator', 'compare', old_schema, new_schema)
    end
  end
end
