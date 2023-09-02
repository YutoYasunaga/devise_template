# frozen_string_literal: true

require_relative 'lib/devise_template/version'

Gem::Specification.new do |spec|
  spec.name = 'devise_template'
  spec.version = DeviseTemplate::VERSION
  spec.authors = ['YutoYasunaga']
  spec.email = ['yuto.yasunaga@gmail.com']

  spec.summary = 'Generate Devise views styled with TailwindCSS or Bootstrap'
  spec.description = 'A Rails gem to easily generate Devise views that are styled using either TailwindCSS or Bootstrap.'
  spec.homepage = 'https://github.com/YutoYasunaga/devise_template'
  spec.license = 'MIT'
  spec.required_ruby_version = '>= 2.6.0'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage

  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor Gemfile])
    end
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
end
