# frozen_string_literal: true

module DeviseTemplate
  module Generators
    class TailwindGenerator < Rails::Generators::Base
      source_root File.expand_path('../../../app/views/devise', __dir__)

      def copy_views
        directory 'tailwind', 'app/views/devise'
      end
    end
  end
end
