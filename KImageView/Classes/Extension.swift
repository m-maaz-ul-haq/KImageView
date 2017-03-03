//
//  Extension.swift
//  Pods
//
//  Created by Muhammad Maaz Ul Haq on 03/03/2017.
//
//

import Foundation
import Alamofire
import AlamofireImage

extension UIImageView {
    
    //MARK: imageFromURL loads images asynchrounously from SERVER URL
    
    /// Adds a response handler to load the image from SERVER URL asynchrounously.
    ///
    /// - parameter url:                        The URL.
    /// - parameter indicatorColor:             The indicatorColor is used to change the customize the LOADING INDICATOR color.
    /// - parameter errorImage:                 The errorImage is used when image is not succuesscfully loaded.
    /// - parameter imageView:                  The imageView object is the view where the loaded image will be set.
    
    public func ImageFromURL(url: String, indicatorColor: UIColor, errorImage: UIImage, imageView: UIImageView) {
        
        print("KImageView - UIImage - Loading image from: \(url)")
        
        let WH = imageView.frame.size.width / 2
        
        let x = (imageView.frame.size.width / 2) - (WH / 2)
        let y = (imageView.frame.size.height / 2) - (WH / 2)
        
        // Create the view
        let progressindicator = UIActivityIndicatorView(frame: CGRect(x: x, y: y, width: WH, height: WH))
        // Change any of the properties you'd like
        progressindicator.color = indicatorColor
        imageView.addSubview(progressindicator)
        progressindicator.hidesWhenStopped = true
        progressindicator.startAnimating()
        
        Alamofire.request(url).responseImage(completionHandler: { ( response ) in
            print(response)
            
            if let img = response.result.value {
                
                debugPrint("Image Loaded Successfully")
                
                self.image = img
                progressindicator.stopAnimating()
            }
            else {
                debugPrint("Image Loading Failed")
                debugPrint(response.debugDescription)
                self.image = errorImage
                progressindicator.stopAnimating()
            }
            
        }).downloadProgress(closure: { (progress) in
            debugPrint(progress)
        })
    }
}
