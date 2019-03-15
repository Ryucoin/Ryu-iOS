Pod::Spec.new do |s|
  s.name             = 'Ryu'
  s.version          = '1.0.0'
  s.summary          = 'SDK for developers to interact with the Ryu Ecosystem.'

  s.homepage         = 'https://github.com/Ryucoin/Ryu-iOS'
  s.license          = { :type => 'UNLICENSED', :file => 'LICENSE' }
  s.author           = { 'Wyatt Mufson' => 'wyatt@ryucoin.com' }
  s.source           = { :git => 'https://github.com/Ryucoin/Ryu-iOS.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/_ryugames'

  s.ios.deployment_target = '12.0'
  s.swift_version = '4.2'

  s.vendored_frameworks = 'Ryu.framework'

  s.dependency 'Socket.IO-Client-Swift', '~> 13.3.0'
  s.dependency 'NetworkUtils'
  s.dependency 'lottie-ios'
  s.dependency 'Particles'
  s.dependency 'neovmUtils'
end
