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

layOrig = "#{currentDir}/platforms/ios/Pods/IBMTealeafDebug/SDKs/iOS/Debug/Tealeaf.framework/TLFResources.bundle/TealeafLayoutConfig.json"
layNew = "#{currentDir}/hooks/TealeafLayoutConfig.json"
puts "Copy #{layNew} to #{layOrig}"
FileUtils.cp_r layNew, layOrig, remove_destination: true