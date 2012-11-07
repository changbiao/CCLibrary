#
# Be sure to run `pod spec lint CCLibrary.podspec' to ensure this is a
# valid spec.
#
# Remove all comments before submitting the spec. Optional attributes are commented.
#
# For details see: https://github.com/CocoaPods/CocoaPods/wiki/The-podspec-format
#
Pod::Spec.new do |s|
  s.name         = "CCLibrary"
  s.version      = "0.1.0"
  s.summary      = "A short description of CCLibrary."
  s.homepage     = "http://github.com/ChaosCoder/CCLibrary.git"

  s.license      = 'MIT (example)'
  s.author       = { "Andreas Ganske" => "a.ganske@chaosspace.de" }
  s.source       = { :git => "http://github.com/ChaosCoder/CCLibrary.git", :tag => "0.1.0" }

  s.platform     = :ios
  s.source_files = '*.{h,m}'
  s.framework  = 'Cocoa'
  s.requires_arc = true
end
