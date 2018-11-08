#!/usr/bin/env ruby

require 'fileutils'

exit 0 if ARGV.length < 1

file = ARGV[0]
basename = File.basename(file, '.mid')
dirname = File.dirname file

system "./miditones -t3 \"#{dirname}/#{basename}\""

melody = File.read "#{dirname}/#{basename}.c"

source = File.read "./source.cpp"

source['!!MELODY!!'] = melody

FileUtils::mkdir_p "./generated/#{basename}"
FileUtils::cp("./playtune/Playtune.cpp", "./generated/#{basename}/")
FileUtils::cp("./playtune/Playtune.h", "./generated/#{basename}/")

File.open("./generated/#{basename}/#{basename}.ino", "w") { |io|
	io.write source
}