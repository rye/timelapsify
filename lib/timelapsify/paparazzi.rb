require "timelapsify/screenshot_capturer"

module Timelapsify
	class Paparazzi
		def self.capture(number, interval = 1.0)
			capturing_agent = Timelapsify::ScreenshotCapturer.new

			start_number = 1
			end_number = (start_number + number) - 1 # meth

			png_list =  Dir.glob("*.png")
			if png_list.count > 0
				png_hash_list = png_list.map do
					|png_filename|

					{filename: png_filename, number: png_filename.match(/(\d+)\.png/i)[0].to_i}
				end

				sorted = png_hash_list.sort do
					|a, b|

					a[:number] <=> b[:number]
				end

				start_number = sorted.last[:number] + 1
				end_number = (start_number + number) - 1
			end
			(start_number..end_number).each do |n|

				capturing_agent.utility.capture_to_file("#{n}.png")

				sleep interval
			end
		end
	end
end
