lib_directory = File.expand_path(File.join(File.dirname(__FILE__), "lib"))
$LOAD_PATH.unshift(lib_directory) unless $LOAD_PATH.include?(lib_directory)

require "timelapsify/version"

Gem::Specification.new do |s|
	s.name = "timelapsify"
	s.email = "kristofer.rye@gmail.com"
	s.version = Timelapsify::VERSION

	s.summary = "A tool for creating timelapses by generating screenshots."
	s.description = "A tool for creating timelapses by generating screenshots using common utilities like scrot."

	s.author = "Kristofer Rye"
	s.homepage = "https://github.com/krye/timelapsify"
	s.files = Dir.glob(File.join(%w_lib ** *.rb_)) <<
	          File.join(%w_bin timelapsify_)

	s.executables << "timelapsify"
	s.add_runtime_dependency("rmagick", ["~>2.13"])
end