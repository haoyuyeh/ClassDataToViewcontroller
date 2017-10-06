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
    func returnAddr(_ addr: String?)
}
// this todo
class Data {
    //MARK: step 2 Create a delegate property here, don't forget to make it weak!
    weak var delegate: DataDelegate?
    let image = UIImage(named: "cat")
    
    func findAddr(_ target: String) {
        //MARK: step 3 Add the delegate method call here
        // compare then find corresponding addr
        let addr = "swanston street"
        // return addr to navi
        delegate?.returnAddr(addr)
    }
}

