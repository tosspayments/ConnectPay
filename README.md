Connectpay
https://tosspayments.com

<img src="https://img.shields.io/badge/platforms-iOS%20%7C%20macOS%20%7C%20tvOS%20%7C%20watchOS%20%7C%20Linux-333333.svg" alt="Supported Platforms: iOS"/>

[![Version](https://img.shields.io/cocoapods/v/ConnectPay.svg?style=flat)](https://cocoapods.org/pods/ConnectPay)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/tosspayments/ios-connectpay)
<a href="https://github.com/apple/swift-package-manager" alt="RxSwift on Swift Package Manager" title="RxSwift on Swift Package Manager"><img src="https://img.shields.io/badge/Swift%20Package%20Manager-compatible-brightgreen.svg" /></a>

# 커넥트페이 iOS SDK 
커넥트페이 iOS SDK를 추가하고 메서드를 사용하는 방법을 알아봅니다.

## 지원
- Xcode 12.x
- Swift 5.x
- iOS 11.0

## SDK 추가
커넥트페이 iOS SDK는 Manual, Cocoapods, Swift Package Manager르 지원합니다.

### XCFreameworks
아래와 같이 프레임워크를 제공하고 있습니다.
```
# Base
Library/ConnectPayBase.xcframework

# 생체인증 지원
Library/BiometricInterface.xcframework

# 카드 OCR 지원
Library/FinCubeOcrSDK.xcframework
Library/OCRInterface.xcframework

# UI 지원 
Library/TossPaymentsCore.xcframework
Library/ConnectPayCore.xcframework
```

필요한 프레임워크를 `Target` 의 `General` 탭 아래에 있는 `Frameworks, Libraries, and Embedded Content` 섹션으로 끌어오기만 하면 됩니다.

<img width="658" alt="스크린샷 2022-02-16 오전 11 28 47" src="https://user-images.githubusercontent.com/10410095/154185013-c6e3f7b5-0b44-47ed-81ea-a63886496afd.png">

### Cocoapods
커넥트페이 iOS SDK는 Cocoapods 패키지로도 제공됩니다. 
```
# Podfile
use_frameworks!

target 'YOUR_TARGET_NAME' do
    # 생체인증 지원
    pod 'ConnectPay/Biometric'
    # 카드 OCR 지원
    pod 'ConnectPay/OCR'
    # UI 지원 
    pod 'ConnectPay/UI'
end
```
`YOUR_TARGET_NAME`을 적절하게 변경한 후 `Podfile` 파일이 있는 디렉토리에서 아래 명령어를 실행하세요.
```
pod install
```

### Swift Package Manager

https://github.com/tosspayments/ConnectPay
