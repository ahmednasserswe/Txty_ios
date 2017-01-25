//
//  CallLog.swift
//  TxTy ios
//
//  Created by Ahmed Mostafa on 1/25/17.
//  Copyright © 2017 Ahmed Mostafa. All rights reserved.
//

import UIKit

class CallLog: NSObject {
    var callMessage: String = ""
    var callId: String = ""
    var callDateString: String = ""
    var callReceived: Bool = false
    var callDate : Date?
    var callerInfo : CallerInfo?
    override init() {
        super.init()
    }
    
    convenience init(jsonDict: NSDictionary) { //To be used for JSONDictionary to Object parsing
        self.init();
        // To-DO
        // Here fill the data from the dictionary
    }

}
