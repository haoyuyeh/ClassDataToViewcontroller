//
//  Data.swift
//  ClassDataToViewcontroller
//
//  Created by Hao Yu Yeh on 2017/9/30.
//  Copyright © 2017年 Hao Yu Yeh. All rights reserved.
//

import UIKit

//MARK: step 1 Add Protoclo here
protocol DataDelegate: class {
    func returnImage(_ image: UIImage?) -> String
}

class Data {
    //MARK: step 2 Create a delegate property here, don't forget to make it weak!
    weak var delegate: DataDelegate?
    let image = UIImage(named: "cat")
    
    func captureImage() {
        //MARK: step 3 Add the delegate method call here
        var str = ""
        str = (delegate?.returnImage(image))!
        print("Data: \(str)")
    }
}

