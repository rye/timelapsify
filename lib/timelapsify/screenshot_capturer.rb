require "timelapsify/rmagick_screenshot_capturer"

module Timelapsify
	class ScreenshotCapturer
		def initialize(utility = :rmagick)
			@utility = utility
		end
	end
end
