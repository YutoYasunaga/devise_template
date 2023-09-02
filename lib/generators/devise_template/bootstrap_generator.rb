# frozen_string_literal: true

module DeviseTemplate
  module Generators
    class BootstrapGenerator < Rails::Generators::Base
      source_root File.expand_path('../../../app/views/devise', __dir__)

      def copy_views
        directory 'bootstrap', 'app/views/devise'
      end
    end
  end
end
