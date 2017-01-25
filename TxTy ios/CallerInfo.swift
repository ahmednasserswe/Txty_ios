//
//  CallerInfo.swift
//  TxTy ios
//
//  Created by Ahmed Mostafa on 1/25/17.
//  Copyright © 2017 Ahmed Mostafa. All rights reserved.
//

import UIKit

class CallerInfo: NSObject {
    var callerName : String = "";
    var callerNumber: String = "";
    var callerProfileImage : String?;
    override init() {
        super.init()
    }
    
    convenience init(jsonDict: NSDictionary) { //To be used for JSONDictionary to Object parsing
        self.init();
        // To-DO
        // Here fill the data from the dictionary
    }

}
