#
# Be sure to run `pod lib lint KImageView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'KImageView'
  s.version          = '0.1.6'
  s.summary          = 'KImageView loads images from server URL asynchronously to UIImageView.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'KImageView is a simple extension to the UIImageView to load images from URL asynchronously.'

  s.homepage         = 'https://github.com/m-maaz-ul-haq/KImageView'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Muhammad Maaz Ul Haq' => 'mailto:m.maazulhaq@kinfross.com' }
  s.source           = { :git => 'https://github.com/m-maaz-ul-haq/KImageView.git', :tag => s.version.to_s}
  s.swift_version = '4.0'
  s.social_media_url = 'https://www.facebook.com/m.maazulhaq'

  s.ios.deployment_target = '8.0'

  s.source_files = 'KImageView/Classes/**/*'
  
  s.dependency 'Alamofire'
  s.dependency 'AlamofireImage'
end
