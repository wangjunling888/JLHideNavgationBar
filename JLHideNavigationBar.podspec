#
#  Be sure to run `pod spec lint JLHideNavigationBar.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  spec.name         = "JLHideNavigationBar"
  spec.version      = "0.0.6"
  spec.summary      = "一行代码隐藏导航栏"
  spec.homepage     = "https://github.com/wangjunling888/JLHideNavigationBar"
  spec.license      = "MIT"
  spec.author       = { "junling" => "junling.wang@hotmail.com" }
  spec.source       = { :git => "https://github.com/wangjunling888/JLHideNavigationBar.git", :tag => "#{spec.version}" }
  spec.source_files  = "JLHideNavigationBar", "JLHideNavigationBar/**/*.{h,m}"
  spec.requires_arc = true 
  spec.framework  = "UIKit"
  spec.platform = :ios, "8.0"

end
