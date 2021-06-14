Pod::Spec.new do |s|
  s.name             = 'Ryu'
  s.version          = '2.16.11-alpha.8'
  s.summary          = 'Ryu Games iOS SDK'

  s.homepage         = 'https://github.com/RyuGames/Ryu-iOS'
  s.license          = { :type => 'UNLICENSED', :file => 'LICENSE' }
  s.author           = { 'Wyatt Mufson' => 'wyatt@ryu.games' }
  s.source           = { :git => 'https://github.com/RyuGames/Ryu-iOS.git', :tag => s.version.to_s }

  s.ios.deployment_target = '12.0'
  s.swift_version = '5.3'

  s.vendored_frameworks = 'Ryu.framework'

  s.dependency 'lottie-ios', '3.2.3'
  s.dependency 'ChainUtils', '2.0.1'
  s.dependency 'PhoneNumberKit', '3.3.3'
  s.dependency 'FBSDKCoreKit', '11.0.0'
  s.dependency 'AppsFlyerFramework', '6.3.1'
  s.dependency 'Amplitude', '8.3.0'
  s.dependency 'FinicityConnect', '1.3.1'
  s.dependency 'Delighted', "1.0.3"


  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

end
