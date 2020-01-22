Pod::Spec.new do |s|
  s.name             = 'Ryu'
  s.version          = '2.0.7'
  s.summary          = 'Ryu Games iOS SDK'

  s.homepage         = 'https://github.com/RyuGames/Ryu-iOS'
  s.license          = { :type => 'UNLICENSED', :file => 'LICENSE' }
  s.author           = { 'Wyatt Mufson' => 'wyatt@ryu.games' }
  s.source           = { :git => 'https://github.com/RyuGames/Ryu-iOS.git', :tag => s.version.to_s }

  s.ios.deployment_target = '12.0'
  s.swift_version = '5.1'

  s.vendored_frameworks = 'Ryu.framework'

  s.dependency 'lottie-ios', '3.0.3'
  s.dependency 'neovmUtils', '1.8.0'
  s.dependency 'PhoneNumberKit', '3.0'
end
