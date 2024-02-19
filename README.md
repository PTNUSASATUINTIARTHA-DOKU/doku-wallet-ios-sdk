# Doku Wallet SDK

Doku Wallet SDK is a SDK designed to facilitate connections to DOKU Wallet API endpoints.

## Features

- Simplified API connectivity.
- Support for both CocoaPods and Swift Package Manager (SPM).

## Requirements

- iOS 11.4 or later.

## Installation

### CocoaPods

To integrate Wallet SDK into your Xcode project using CocoaPods, specify it in your Podfile:

```ruby
pod 'DokuWalletSDK', '~> 1.0.0'
```

Then, run the following command in your terminal:
```ruby
pod install
```

### Swift Package Manager
To add Wallet SDK to your Xcode project using Swift Package Manager, add the following to your Package.swift file under dependencies:

```swift
.package(url: "https://github.com/PTNUSASATUINTIARTHA-DOKU/doku-wallet-ios-sdk.git", .upToNextMajor(from: "1.0.0"))
```

Alternatively, you can add Doku Wallet SDK through the Xcode UI by navigating to:

File -> Swift Packages -> Add Package Dependency...

and entering the repository URL:
```swift
https://github.com/PTNUSASATUINTIARTHA-DOKU/doku-wallet-ios-sdk.git
```

## Usage
First, import Wallet SDK in your file:
```swift
import DokuWalletSDK
```

### Example Calling a Function
To call a function such as getTokenB2B, use the following syntax. This function  retrieves data and returns a response in the form of a custom Codable struct or an error.
```swift
Wallet.sharedInstance.getTokenB2B(headers: headers, parameters: parameters) { result in
    switch result {
    case .success(let response):
        print("Success: \(response)")
    case .failure(let error):
        print("Error: \(error)")
    }
}
```

### Understanding the Response
Each function returns a unique response type. For example, getTokenB2B returns a response of type GetTokenB2BResponse, which includes various fields such as accessToken, expiresIn, and more.

```swift
public struct GetTokenB2BResponse: Codable {
    public var accessToken: String?
    public var tokenType: String?
    public var expiresIn: Int?
    public var additionalInfo: String?
    public var responseCode: String?
    public var responseMessage: String?
}
```

### Handling Errors
The SDK uses a custom WalletError enum to represent errors. This enum includes various cases such as apiError and networkError, providing detailed information about what went wrong.

```swift
public enum WalletError: Error {
    case apiError(responseCode: String, responseMessage: String, originalError: Error)
    case networkError(type: NetworkErrorType, originalError: Error? = nil)
    
    // Detailed categorization of network errors
    public enum NetworkErrorType: String, Decodable {
        case noConnection = "No internet connection"
        case clientError400 = "Client error (400)"
        case serverError500 = "Internal server error (500)"
        case noData = "No data"
        case unknownError = "Unknown error"
        case decodingError = "Decoding error"
    }
}
```

When handling errors, you can switch on the WalletError to get detailed info about the failure, including HTTP response codes, messages, and underlying errors if any.

### Full Documentation
Refer to the full documentation for details on other functions and their unique response types. This guide only covers a general usage pattern and error handling. For more comprehensive examples and advanced usage, kindly check the API documentation and the demo project.
