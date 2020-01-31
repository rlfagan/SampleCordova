#!/usr/bin/env ruby
require 'fileutils'

puts "Update podfile"
currentDir = Dir.pwd
podOrig = "#{currentDir}/platforms/ios/Podfile"
podNew = "#{currentDir}/hooks/Podfile"
puts "Copy #{podNew} to #{podOrig}"
FileUtils.cp_r podNew, podOrig, remove_destination: true
puts "cd #{currentDir}/platforms/ios && pod install"
output = `cd #{currentDir}/platforms/ios && pod install`
puts output
