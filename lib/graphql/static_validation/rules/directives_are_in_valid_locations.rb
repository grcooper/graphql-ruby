# typed: false
# frozen_string_literal: true
module GraphQL
  module StaticValidation
    module DirectivesAreInValidLocations
      include GraphQL::Language

      def on_directive(node, parent)
        validate_location(node, parent, context.schema.directives)
        super
      end

      private

      LOCATION_MESSAGE_NAMES = {
        GraphQL::Directive::QUERY =>               "queries",
        GraphQL::Directive::MUTATION =>            "mutations",
        GraphQL::Directive::SUBSCRIPTION =>        "subscriptions",
        GraphQL::Directive::FIELD =>               "fields",
        GraphQL::Directive::FRAGMENT_DEFINITION => "fragment definitions",
        GraphQL::Directive::FRAGMENT_SPREAD =>     "fragment spreads",
        GraphQL::Directive::INLINE_FRAGMENT =>     "inline fragments",
      }

      SIMPLE_LOCATIONS = {
        Nodes::Field =>               GraphQL::Directive::FIELD,
        Nodes::InlineFragment =>      GraphQL::Directive::INLINE_FRAGMENT,
        Nodes::FragmentSpread =>      GraphQL::Directive::FRAGMENT_SPREAD,
        Nodes::FragmentDefinition =>  GraphQL::Directive::FRAGMENT_DEFINITION,
      }

      SIMPLE_LOCATION_NODES = SIMPLE_LOCATIONS.keys

      def validate_location(ast_directive, ast_parent, directives)
        directive_defn = directives[ast_directive.name]
        case ast_parent
        when Nodes::OperationDefinition
          required_location = GraphQL::Directive.const_get(ast_parent.operation_type.upcase)
          assert_includes_location(directive_defn, ast_directive, required_location)
        when *SIMPLE_LOCATION_NODES
          required_location = SIMPLE_LOCATIONS[ast_parent.class]
          assert_includes_location(directive_defn, ast_directive, required_location)
        else
          add_error(GraphQL::StaticValidation::DirectivesAreInValidLocationsError.new(
            "Directives can't be applied to #{ast_parent.class.name}s",
            nodes: ast_directive,
            target: ast_parent.class.name
          ))
        end
      end

      def assert_includes_location(directive_defn, directive_ast, required_location)
        if !directive_defn.locations.include?(required_location)
          location_name = LOCATION_MESSAGE_NAMES[required_location]
          allowed_location_names = directive_defn.locations.map { |loc| LOCATION_MESSAGE_NAMES[loc] }
          add_error(GraphQL::StaticValidation::DirectivesAreInValidLocationsError.new(
            "'@#{directive_defn.graphql_name}' can't be applied to #{location_name} (allowed: #{allowed_location_names.join(", ")})",
            nodes: directive_ast,
            target: location_name,
            name: directive_defn.name
          ))
        end
      end
    end
  end
end
