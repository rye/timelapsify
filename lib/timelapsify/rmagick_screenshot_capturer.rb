require "date"
require "rmagick"

module Timelapsify
	class RMagickScreenshotCapturer
		def self.capture(options = {})
			options[:silent] = !options[:silent].nil? ? options[:silent] : true
			options[:frame] = !options[:frame].nil? ? options[:frame] : false
			options[:descend] = !options[:descend].nil? ? options[:descend] : false
			options[:screen] = !options[:screen].nil? ? options[:screen] : true
			options[:borders] = !options[:borders].nil? ? options[:borders] : true

			options[:optional_arguments] = !options[:optional_arguments].nil? ? options[:optional_arguments] : ->(test){ self.filename = "root" }

			Magick::Image.capture(options[:silent], options[:frame], options[:descend], options[:screen], options[:borders], &options[:optional_arguments])
		end

		def self.capture_to_file(filename = "unknown.png", options = {})
			self.capture(options).write(filename)
		end
	end
end
