Pod::Spec.new do |s|
  s.name             = 'Ryu'
  s.version          = '2.16.4'
  s.summary          = 'Ryu Games iOS SDK'

  s.homepage         = 'https://github.com/RyuGames/Ryu-iOS'
  s.license          = { :type => 'UNLICENSED', :file => 'LICENSE' }
  s.author           = { 'Wyatt Mufson' => 'wyatt@ryu.games' }
  s.source           = { :git => 'https://github.com/RyuGames/Ryu-iOS.git', :tag => s.version.to_s }

  s.ios.deployment_target = '12.0'
  s.swift_version = '5.3'

  s.vendored_frameworks = 'Ryu.framework'

  s.dependency 'lottie-ios', '3.1.9'
  s.dependency 'ChainUtils', '2.0.0'
  s.dependency 'PhoneNumberKit', '3.3.1'
  s.dependency 'FBSDKCoreKit', '8.2.0'
  s.dependency 'AppsFlyerFramework', '6.2.3'
  s.dependency 'Amplitude', '5.1.0'
  s.dependency 'FinicityConnect', '1.3.1'

  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

end
