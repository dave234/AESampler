#
# Be sure to run `pod lib lint AESampler.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AESampler'
  s.version          = '0.1.0'
  s.summary          = 'An AUSampler wrapper for TheAmazingAudioEngine'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
An AUSampler wrapper for TheAmazingAudioEngine.  Subclasses AEAudioUnitChannel.
                       DESC

  s.homepage         = 'https://github.com/dave234/AESampler'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'dave234' => 'dave234@users.noreply.github.com' }
  s.source           = { :git => 'https://github.com/dave234/AESampler.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'AESampler/Classes/**/*'

  s.dependency 'TheAmazingAudioEngine', '> 1.5.1'
  s.dependency 'AUPresetManager', '~> 0.1.0' 
 
 # s.resource_bundles = {
  #   'AESampler' => ['AESampler/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
