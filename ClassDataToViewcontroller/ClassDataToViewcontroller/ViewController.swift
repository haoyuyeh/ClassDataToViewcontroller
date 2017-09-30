//
//  ViewController.swift
//  ClassDataToViewcontroller
//
//  Created by Hao Yu Yeh on 2017/9/30.
//  Copyright © 2017年 Hao Yu Yeh. All rights reserved.
//

import UIKit

class ViewController: UIViewController, DataDelegate {
    @IBOutlet weak var showImage: UIImageView!
    var data = Data()
    
    @IBAction func show(_ sender: UIButton) {
        data.captureImage()
    }
    
    func returnImage(_ image: UIImage?) {
        showImage.image = image
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        data.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
