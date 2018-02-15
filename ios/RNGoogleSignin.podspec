
require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = "react-native-google-signin"
  s.version      = package['version']
  s.summary      = package['description']

  s.authors      = "Devfd"
  s.homepage     = package['homepage']
  s.license      = package['license']
  s.platform     = :ios, "8.0"

  s.module_name  = 'react-native-google-signin'

  s.source       = { :git => "https://github.com/devfd/react-native-google-signin", :tag => "v#{s.version}" }
  s.source_files  = "ios/**/*.{h,m}"
  s.xcconfig = { 'USER_HEADER_SEARCH_PATHS' => '${PODS_TARGET_SRCROOT}/ios/**' }

  s.dependency 'React'
  s.frameworks = 'UIKit'
end
