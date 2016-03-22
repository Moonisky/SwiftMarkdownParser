#
# Be sure to run `pod lib lint MarkdownParseKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "MarkdownParseKit"
  s.version          = "0.1.0"
  s.summary          = "A Swift Wrapper of the Sundown Markdown Library."

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!  
  s.description      = "The aim of this framework is to provide the basic functionality that sundown provides alongside the possibility to do stuff quickly (simple API)."

  s.homepage         = "https://github.com/SemperIdem/SwiftMarkdownParser"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "星夜暮晨" => "guest@swift.gg" }
  s.source           = { :git => "https://github.com/SemperIdem/SwiftMarkdownParser.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  # s.resource_bundles = {
  #  'MarkdownParseKit' => ['Pod/Assets/*.png']
  # }

  s.public_header_files = 'Pod/Classes/Bridge-Header.h', 'Pod/Classes/Sundown/html/html.h', 'Pod/Classes/Sundown/src/autolink.h', 'Pod/Classes/Sundown/src/buffer.h', 'Pod/Classes/Sundown/src/markdown.h'
  s.frameworks = 'UIKit', 'WebKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
