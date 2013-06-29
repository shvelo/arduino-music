#!/usr/bin/env ruby

exit 0 if ARGV.length < 1

file = File.basename ARGV[0], ".mid"

system "./miditones -t3 \"#{file}\""


melody = File.read "#{file}.c"

source = File.read "source.cpp"

source['!!MELODY!!'] = melody

outfile = file.gsub(/[^A-Za-z0-9_]*/, "")

Dir.mkdir "#{outfile}"

File.open("#{outfile}/#{outfile}.ino", "w") { |io|
	io.write source
}