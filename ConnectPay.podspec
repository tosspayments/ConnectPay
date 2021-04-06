Pod::Spec.new do |spec|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #

  spec.name         = "ConnectPay"
  spec.version      = "0.0.2"
  spec.summary      = "ConnectPay SDK from TossPayments"

  spec.description  = <<-DESC
                   ConnectPay SDK from TossPayments

                   You can install Pay module easily.
                   DESC

  spec.homepage     = "https://www.tosspayments.com"
  spec.license      = { :type => 'Proprietary', :text => 'Copyright 2021 TossPayments Ltd. All rights reserved.' }
  spec.author       = { "Jinkyu Kim" => "mqz@toss.im" }
  spec.platform     = :ios
  spec.ios.deployment_target = '11.0'
  spec.source       = { :git => "https://github.com/tosspayments/ios-connectpay.git", :branch => "develop" }

  spec.ios.frameworks = 'UIKit'
  
  spec.ios.preserve_paths = 'Library/ConnectPaySDK.framework'
  spec.ios.vendored_frameworks = 'Library/ConnectPaySDK.framework'
  
end
