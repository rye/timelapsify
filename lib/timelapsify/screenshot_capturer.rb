require "timelapsify/rmagick_screenshot_capturer"

# Magick::Image.capture(true, false, false, true, true) {self.filename = "root"}.write("test.png")

module Timelapsify
	class ScreenshotCapturer
		def initialize(utility = :rmagick)
			@utility = utility
		end
	end
end
