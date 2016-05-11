lib_directory = File.expand_path(File.join(File.dirname(__FILE__), "lib"))
$LOAD_PATH.unshift(lib_directory) unless $LOAD_PATH.include?(lib_directory)

require 'timelapsify/version'

Gem::Specification.new do |s|

	s.name = 'timelapsify'
	s.email = 'kristofer.rye@gmail.com'

	s.version = Timelapsify::VERSION

	s.summary = 'A tool for creating timelapses by generating screenshots.'
	s.description = 'A tool for creating timelapses by generating screenshots using common utilities like scrot.'

	s.author = 'Kristofer Rye'
	s.homepage = 'https://github.com/rye/timelapsify'

	s.files = Dir.glob(File.join(%w[lib ** *.rb]))

	[File.join(%w[bin timelapsify]),
	 'README.md',
	 'Gemfile',
	 'Gemfile.lock'].each do |file|
		s.files << file
	end

	s.executables << 'timelapsify'

	s.add_dependency('pry', ['~> 0.10'])
	s.add_dependency('rmagick', ['~> 2'])

	s.add_development_dependency('pry-doc', ['~> 0.8'])
	s.add_development_dependency('rake', ['~> 11.1'])
	s.add_development_dependency('rspec', ['~> 3.4'])
	s.add_development_dependency('guard', ['~> 2.13'])
	s.add_development_dependency('guard-rspec', ['~> 4.6'])

	s.add_development_dependency('codeclimate-test-reporter', ['~> 0.5'])
end
