Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #

  s.name         = "ConnectPay"
  s.version      = `cat version`
  s.summary      = "ConnectPay SDK from TossPayments"

  s.description  = <<-DESC
                   ConnectPay SDK from TossPayments

                   You can install Pay module easily.
                   DESC

  s.homepage     = "https://www.tosspayments.com"
  s.license      = { :type => 'Proprietary', :text => 'Copyright 2021 TossPayments Ltd. All rights reserved.' }
  s.author       = { "Jinkyu Kim" => "mqz@toss.im" }
  s.platform     = :ios
  s.ios.deployment_target = '11.0'
  s.source       = { :git => "https://github.com/tosspayments/ConnectPay.git", :tag => s.version.to_s }

  # s.ios.frameworks = 'UIKit'
  
  # s.ios.preserve_paths = [
  #   'Library/*.xcframework'
  # ]
  # s.ios.vendored_frameworks = [
  #   'Library/*.xcframework'
  # ]
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

  s.default_subspec = 'Core'

  s.subspec 'Core' do |ss|
    ss.ios.preserve_paths = [
      'Library/ConnectPayBase.xcframework'
    ]
    ss.ios.vendored_frameworks = [
      'Library/ConnectPayBase.xcframework'
    ]
  end

  s.subspec 'Biometric' do |ss|
    ss.ios.preserve_paths = [
      'Library/BiometricInterface.xcframework'
    ]
    ss.ios.vendored_frameworks = [
      'Library/BiometricInterface.xcframework'
    ]

    ss.dependency 'ConnectPay/Core'
  end

  s.subspec 'OCR' do |ss|
    ss.ios.preserve_paths = [
      'Library/FinCubeOcrSDK.xcframework',
      'Library/OCRInterface.xcframework'
    ]
    ss.ios.vendored_frameworks = [
      'Library/FinCubeOcrSDK.xcframework',
      'Library/OCRInterface.xcframework'
    ]
    
    ss.dependency 'ConnectPay/Core'
  end

  s.subspec 'UI' do |ss|
    ss.ios.preserve_paths = [
      'Library/ConnectPayCore.xcframework',
      'Library/TossPaymentsCore.xcframework'
    ]
    ss.ios.vendored_frameworks = [
      'Library/ConnectPayCore.xcframework',
      'Library/TossPaymentsCore.xcframework'
    ]
    
    ss.dependency 'ConnectPay/Core'
    ss.dependency 'ConnectPay/Biometric'
    ss.dependency 'ConnectPay/OCR'
  end
end
