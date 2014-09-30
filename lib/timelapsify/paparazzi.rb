require "timelapsify/screenshot_capturer"

module Timelapsify
	class Paparazzi
		def self.capture(number, interval = 1.0)
			capturing_agent = Timelapsify::ScreenshotCapturer.new

			# Default bounds for new filename iteration.
			start_number = 1
			end_number = (start_number + number) - 1 # meth

			# ScreenshotCapturers are a bit stupid and don't know
			# what's going on, so we've gotta examine the range for
			# them to make sure that nobody gets clobbered.
			png_list =  Dir.glob("*.png")

			# If we've already got more than 0 PNG's in the directory.
			if png_list.count > 0
				# First generate an array of hashes, with :filename
				# hashed to the filename and :number to the number
				# that got parsed out of the filename.
				png_hash_list = png_list.map do
					|png_filename|

					{filename: png_filename, number: png_filename.match(/(\d+)\.png/i)[0].to_i}
				end

				# Sort them by number.
				sorted = png_hash_list.sort do
					|a, b|

					a[:number] <=> b[:number]
				end

				# Change the bounds for new filename iteration to be
				# directly after the last PNG filename.
				start_number = sorted.last[:number] + 1
				end_number = (start_number + number) - 1
			end

			# Grab the predetermined number of screenshots.
			(start_number..end_number).each do |n|
				# Capture screenshots using the capturing_agent
				capturing_agent.utility.capture_to_file("#{n}.png")

				# Sleep a bit.
				sleep interval
			end
		end
	end
end
