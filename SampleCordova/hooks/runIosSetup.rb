#!/usr/bin/env ruby
require 'fileutils'

puts "Update podfile"
podName = File.expand_path(File.dirname(File.dirname(__FILE__)) + "./platforms/ios/Podfile")
puts podName
FileUtils.cp_r 'Podfile', podName, remove_destination: true

puts "cd ../platforms/ios && pod install"
output = `cd ../platforms/ios && pod install`
puts output
