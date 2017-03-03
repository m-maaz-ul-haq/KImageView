# KImageView

[![CI Status](http://img.shields.io/travis/m.maazulhaq@yahoo.com/KImageView.svg?style=flat)](https://travis-ci.org/m.maazulhaq@yahoo.com/KImageView)
[![Version](https://img.shields.io/cocoapods/v/KImageView.svg?style=flat)](http://cocoapods.org/pods/KImageView)
[![License](https://img.shields.io/cocoapods/l/KImageView.svg?style=flat)](http://cocoapods.org/pods/KImageView)
[![Platform](https://img.shields.io/cocoapods/p/KImageView.svg?style=flat)](http://cocoapods.org/pods/KImageView)

KImageView is a simple extension to the UIImageView to load images from URL asynchronously.

## Installation

KImageView is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "KImageView"
```

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## How to use

Declare an UIImageView IBOutlet
```ruby

@IBOutlet weak var imageView: UIImageView!

self.imageView.imageFromURL(url: "http://www.cartoon-clipart.co/amp/images/scooby-doo.png", indicatorColor: .gray, errorImage: UIImage(named: "replaceWithErrorImage")!, imageView: self.imageView)

```
That's it.


## Built With

* [Alamofire](https://github.com/Alamofire/Alamofire/) - Alamofire is an HTTP networking library written in Swift.
* [AlamofireImage](https://github.com/Alamofire/AlamofireImage/) - AlamofireImage is an image component library for Alamofire.

## Author
* **[Muhammad Maaz Ul Haq](mailto:m.maazulhaq@kinfross.com)**

## License

KImageView is available under the MIT license. See the LICENSE file for more info.
