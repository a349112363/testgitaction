platform :ios, '12.0'


post_install do |installer|
  installer.pods_project.targets.each do |target|
    if target.name == 'HandyJSON'
      target.build_configurations.each do |config|
        config.build_settings['SWIFT_OPTIMIZATION_LEVEL'] = '-Onone'  # 禁用优化
        config.build_settings['OPTIMIZATION_LEVEL'] = '0'             # 关闭 LLVM 优化
      end
    end
  end
end

target 'testgithubaction' do
  use_frameworks!

  # 网络与数据
  pod 'Moya'
  pod 'SwiftyJSON'
  pod 'HandyJSON'

  # UI 工具
  pod 'SnapKit'
  pod 'HBDNavigationBar', '~> 1.7.5'
  pod 'Toast-Swift', '~> 5.0'

  # RxSwift 生态
  pod 'RxSwift'
  pod 'RxCocoa'
  pod 'RxGesture'
  pod 'RxSwiftExt'
  pod 'RxDataSources'
  pod 'NSObject+Rx', '~> 5.0'

  # 工具库
  pod 'SwifterSwift', '~> 5.0'
  pod 'MBProgressHUD'
  pod 'GTMBase64'
  pod 'Hue'
  pod 'JSONModel'

  # Firebase 相关，强制动态库模式
  pod 'FirebaseAnalytics','~> 11.4.0'
  pod 'FirebaseCrashlytics','~> 11.4.0'

  # 社交登录
  pod 'GoogleSignIn'
  pod 'FBSDKLoginKit','~> 17.0.3'
  pod 'FBSDKShareKit','~> 17.0.3'

  # 穿山甲
  pod 'Ads-Global','~> 5.8.0.8'

  # max
  pod 'AppLovinSDK','~> 12.4.1'
  pod 'AppLovinMediationFacebookAdapter','~> 6.15.0.0'
  pod 'AppLovinMediationMintegralAdapter','~> 7.6.2.0'
  pod 'AppLovinMediationByteDanceAdapter','~> 5.8.0.8'
  pod 'AppLovinMediationUnityAdsAdapter','~> 4.10.0.0'
  pod 'AppLovinMediationVerveAdapter','~> 3.0.1.0'
  pod 'AppLovinMediationVungleAdapter','~> 7.4.1.0'

  # admob
  pod 'Google-Mobile-Ads-SDK','~> 11.1.0'
end


