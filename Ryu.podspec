Pod::Spec.new do |s|
  s.name             = 'Ryu'
  s.version          = '1.1.1'
  s.summary          = 'SDK for developers to interact with the Ryu Ecosystem.'

  s.homepage         = 'https://github.com/Ryucoin/Ryu-iOS'
  s.license          = { :type => 'UNLICENSED', :file => 'LICENSE' }
  s.author           = { 'Wyatt Mufson' => 'wyatt@ryucoin.com' }
  s.source           = { :git => 'https://github.com/Ryucoin/Ryu-iOS.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/_ryugames'

  s.ios.deployment_target = '12.1'
  s.swift_version = '5'

  s.vendored_frameworks = 'Ryu.framework'

  s.dependency 'Socket.IO-Client-Swift', '14.0.0'
  s.dependency 'NetworkUtils', '0.3.0'
  s.dependency 'lottie-ios', '3.0.3'
  s.dependency 'Particles', '0.2.0'
  s.dependency 'neovmUtils', '0.4.3'
end
