//
//  ViewController.swift
//  KImageView
//
//  Created by m.maazulhaq@yahoo.com on 03/03/2017.
//  Copyright (c) 2017 m.maazulhaq@yahoo.com. All rights reserved.
//

import UIKit
import KImageView

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.imageView.ImageFromURL(url: "http://www.cartoon-clipart.co/amp/images/scooby-doo.png", indicatorColor: .gray, errorImage: UIImage(named: "ErrorImage")!, imageView: self.imageView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func ReloadImage(_ sender: UIButton) {
        self.imageView.image = nil
        self.imageView.ImageFromURL(url: "http://www.cartoon-clipart.co/amp/images/scooby-doo.png", indicatorColor: .gray, errorImage: UIImage(named: "ErrorImage")!, imageView: self.imageView)
    }
}

