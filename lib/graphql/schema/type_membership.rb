# frozen_string_literal: true

module GraphQL 
  class Schema
    class TypeMembership
      attr_reader :types

      def initialize(types, _visibility)
        @types = types
      end

      def visible?(_ctx)
        true
      end
    end
  end
end
