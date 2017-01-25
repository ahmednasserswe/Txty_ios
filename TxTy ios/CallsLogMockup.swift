//
//  CallsLogMockup.swift
//  TxTy ios
//
//  Created by Ahmed Mostafa on 1/25/17.
//  Copyright © 2017 Ahmed Mostafa. All rights reserved.
//

import UIKit

class CallsLogMockup: NSObject {

    // Used to mockup the api responses (for testing and early development without a working api)
    // Sometimes, I do it using a file of example json response - but for now I will just return an array of CallLog
    func asURLRequest() -> NSArray {
        
        let caller = CallerInfo()
        caller.callerName = "Matteo"
        caller.callerNumber = "+393886339514"
        caller.callerProfileImage = "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRTATAm7jkOpYUaHmpRhPnNFmFFO95dvGugqlx7ufDKbI4cEIo5"
        
        let callLog1 = CallLog()
        callLog1.callMessage = "Are you free!? Lets go have a drink"
        callLog1.callerInfo = caller
        let callLog2 = CallLog()
        callLog2.callMessage = "How was the sales meeting?"
        callLog2.callerInfo = caller

        let callLog3 = CallLog()
        callLog3.callMessage = "You haven't pushed your code :D :D :D"
        callLog3.callerInfo = caller

        let callLog4 = CallLog()
        callLog4.callMessage = "Are you free!? Lets go have a drink"
        callLog4.callReceived = true
        callLog4.callerInfo = caller

        let callsLog = NSArray(objects: callLog1,callLog2,callLog3, callLog4)
        
        return callsLog
    }

    
}
