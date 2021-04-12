#
# Be sure to run `pod lib lint EasyConstraint.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'EasyConstraint'
  s.version          = '1.0.0'
  s.summary          = 'Provide some useful APIs for creating iOS layout constraints.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/lee1994522/EasyConstraint'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'lee1994522' => '839273739@qq.com' }
  s.source           = { :git => 'https://github.com/lee1994522/EasyConstraint.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'EasyConstraint/Classes/**/*'
  
  # s.resource_bundles = {
  #   'EasyConstraint' => ['EasyConstraint/Assets/*.png']
  # }

  s.public_header_files = 'EasyConstraint/Classes/*.h'
  s.frameworks = 'UIKit'
end
