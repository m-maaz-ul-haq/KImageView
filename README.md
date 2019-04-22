# KImageView

[![CI Status](http://img.shields.io/travis/m.maazulhaq@yahoo.com/KImageView.svg?style=flat)](https://travis-ci.org/m-maaz-ul-haq/KImageView)
[![Version](https://img.shields.io/cocoapods/v/KImageView.svg?style=flat)](http://cocoapods.org/pods/KImageView)
[![License](https://img.shields.io/cocoapods/l/KImageView.svg?style=flat)](http://cocoapods.org/pods/KImageView)
[![Platform](https://img.shields.io/cocoapods/p/KImageView.svg?style=flat)](http://cocoapods.org/pods/KImageView)

KImageView is a simple extension to the UIImageView to load images from URL asynchronously.

## Installation

KImageView is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'KImageView'
```

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## How to use

Declare an UIImageView IBOutlet
```ruby

@IBOutlet weak var imageView: UIImageView!

self.imageView.image(from: "http://www.cartoon-clipart.co/amp/images/scooby-doo.png", errorImage: UIImage(named: "replaceWithErrorImage")

```
That's it.

## Author
* **[Muhammad Maaz Ul Haq](mailto:m.maazulhaq@kinfross.com)**

## License

KImageView is available under the MIT license. See the LICENSE file for more info.
