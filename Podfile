# Uncomment this line to define a global platform for your project
# platform :ios, '9.0'

target 'TxTy ios' do
  # Comment this line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!

  # Pods for TxTy ios
  pod 'Alamofire'
  target 'TxTy iosTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'TxTy iosUITests' do
    inherit! :search_paths
    # Pods for testing
  end

end

# To resolve issue with "Use Legacey Swift" issue with XCode 8.2+
post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['SWIFT_VERSION'] = '3.0'
        end
    end
end


# Example of the libraries I use
# Fabric
#def global_frameworks
#pod 'SwiftCharts' #data visualization for Swift (amazing lib)
#pod 'AlamofireImage'
#pod 'Bond' #binding framework
#pod 'MBProgressHUD'
#pod 'Eureka' #building forms easily
#pod 'SwiftyBeaver' #cloud logging - helpful with debuging and crash detective
#pod 'Fabric'  # Crash reporting. But I prefer Instabug (because I know the guys behind it :D)
#pod 'Instabug'
#pod 'TwitterKit'#of course the usual twitter/fb/google kits
#pod 'TwitterCore'
#pod 'Google/SignIn'
end
