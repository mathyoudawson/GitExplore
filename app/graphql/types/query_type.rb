# frozen_string_literal: true

# They will be entry points for queries on your schema.

Types::QueryType = GraphQL::ObjectType.define do
    name 'Query'

    field :users, !types[Types::UserType] do
      resolve -> (obj, args, ctx) {
        User.all
      }
    end
  end
