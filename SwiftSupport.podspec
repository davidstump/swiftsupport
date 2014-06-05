Pod::Spec.new do |s|
  s.name             = "SwiftSupport"
  s.version          = File.read('VERSION')
  s.summary          = "ActiveSupport style helpers in Swift"
  s.homepage         = "https://github.com/davidstump/swiftsupport"
  s.license          = 'MIT'
  s.author           = { "David Stump" => "david@davidstump.net" }
  s.source           = { :git => "https://github.com/davidstump/swiftsupport.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/davidstump'

  # s.platform     = :ios, '7.0'
  # s.ios.deployment_target = '7.0'
  s.requires_arc = true

  s.ios.exclude_files = 'Classes/osx'
  s.osx.exclude_files = 'Classes/ios'
  s.source_files = 'Classes/**/*.swift'
  s.frameworks = 'Foundation'
end
