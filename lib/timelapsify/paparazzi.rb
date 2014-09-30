require "timelapsify/screenshot_capturer"

module Timelapsify
	class Paparazzi
		def self.capture(number, interval = 1.0)
			capturing_agent = Timelapsify::ScreenshotCapturer.new

			(1..number).each do
				capturing_agent.utility.capture_to_file

				sleep interval
			end
		end
	end
end
