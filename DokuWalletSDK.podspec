Pod::Spec.new do |spec|

  spec.name         = "DokuWalletSDK"
  spec.version      = "1.0.0"
  spec.summary      = "DOKU Wallet SDK"
  spec.description  = <<-DESC
Doku Wallet SDK is a SDK designed to facilitate connections to DOKU Wallet API endpoints.
                   	DESC
  spec.homepage     = "https://github.com/PTNUSASATUINTIARTHA-DOKU/doku-wallet-ios-sdk"
  spec.license      = { :type => "Custom", :file => "LICENSE" }
  spec.authors       = "DOKU"
  spec.platform     = :ios, "11.4"
  spec.source       = { :git => "https://github.com/PTNUSASATUINTIARTHA-DOKU/doku-wallet-ios-sdk.git", :tag => spec.version.to_s }
  spec.requires_arc = true
  spec.preserve_paths = "DokuWalletSDK.xcframework"
  spec.vendored_frameworks = "DokuWalletSDK.xcframework"
end
