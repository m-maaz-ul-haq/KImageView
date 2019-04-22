//
//  Extension.swift
//  Pods
//
//  Created by Muhammad Maaz Ul Haq on 03/03/2017.
//
//

import Foundation

extension UIImageView {
    
    //MARK: imageFromURL loads images asynchrounously from SERVER URL
    
    /// Adds a response handler to load the image from SERVER URL asynchrounously.
    ///
    /// - parameter url:                        The URL.
    /// - parameter indicatorColor:             The indicatorColor is used to change the customize the LOADING INDICATOR color.
    /// - parameter errorImage:                 The errorImage is used when image is not succuesscfully loaded.
    
    public func image(from url: String, errorImage: UIImage, indicatorColor: UIColor = UIColor.gray) {
        self.image = nil
        
        let WH = self.frame.size.width / 2
        
        let x = (self.frame.size.width / 2) - (WH / 2)
        let y = (self.frame.size.height / 2) - (WH / 2)
        
        // Create the view
        let progressindicator = UIActivityIndicatorView(frame: CGRect(x: x, y: y, width: WH, height: WH))
        // Change any of the properties you'd like
        progressindicator.color = indicatorColor
        self.addSubview(progressindicator)
        progressindicator.hidesWhenStopped = true
        progressindicator.startAnimating()
        
        let cache = NSCache<NSString, NSData>()
        let url  = URL(string: url)!
        
        DispatchQueue.global(qos: DispatchQoS.QoSClass.background).async {
            
            if let data = cache.object(forKey: url.absoluteString as NSString) {
                DispatchQueue.main.async {
                    self.image = UIImage(data: data as Data)
                    progressindicator.stopAnimating()
                }
                return
            }
            
            guard let data = NSData(contentsOf: url) else {
                DispatchQueue.main.async {
                    self.image = errorImage
                    progressindicator.stopAnimating()
                }
                return
            }
            
            cache.setObject(data, forKey: url.absoluteString as NSString)
            DispatchQueue.main.async {
                self.image = UIImage(data: data as Data)
                progressindicator.stopAnimating()
            }
        }
    }
}
