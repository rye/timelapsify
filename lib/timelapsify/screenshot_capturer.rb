require "timelapsify/rmagick_screenshot_capturer"

module Timelapsify
	class ScreenshotCapturer
		def initialize(utility = :rmagick)
			case utility
			when :rmagick
				@utility = Timelapsify::RMagickScreenshotCapturer
			else
				raise NotImplementedError, "Cannot find an appropriate class for utility argument #{utility}"
			end
		end
	end
end
