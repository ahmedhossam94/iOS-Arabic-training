//
//  Animal.swift
//  ZooApp
//
//  Created by egy10 on 1/11/18.
//  Copyright © 2018 ahmed hossam. All rights reserved.
//

import UIKit

class Animal {
    
    var Name:String?
    var image:String?
    var desc:String?
    
    init(Name:String,desc:String,image:String) {
        self.desc=desc
        self.Name=Name
        self.image=image
    }

}
