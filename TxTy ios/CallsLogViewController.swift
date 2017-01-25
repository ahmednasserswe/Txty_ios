//
//  CallsLogViewController.swift
//  TxTy ios
//
//  Created by Ahmed Mostafa on 1/25/17.
//  Copyright © 2017 Ahmed Mostafa. All rights reserved.
//

import UIKit

class CallsLogViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    var missedCallsLogArray = NSArray()
    var otherCallsLogArray = NSArray()
    @IBOutlet weak var tableView: UITableView!

    @IBOutlet weak var segmantedControl: UISegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()
        retrieveCallsLogData()
        // Do any additional setup after loading the view.
    }

    func retrieveCallsLogData() {
        // TO_DO
        // Currently on dummy data
        otherCallsLogArray = CallsLogMockup.getOtherCallsLogArrayExample()
        missedCallsLogArray = CallsLogMockup.getMissedCallsLogArrayExample()
    }
    
 
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if segmantedControl.selectedSegmentIndex == 0
        {
            return missedCallsLogArray.count

        }else{
            return otherCallsLogArray.count

        }
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CallLogCellID") as? CallLogCell!
        
        var callLog :CallLog?
        
        if segmantedControl.selectedSegmentIndex == 0
        {
            callLog = missedCallsLogArray[indexPath.row] as? CallLog
        }else{
            callLog = otherCallsLogArray[indexPath.row] as? CallLog
        }
        cell?.messageLabel.text = callLog?.callMessage
        cell?.callerNumberLabel.text = callLog?.callerInfo?.callerNumber

        return cell!
    }
    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat{
        return 90;
    }
    @IBAction func segmatedControlValueChanged(_ sender: Any) {
        tableView.reloadData()
    }
   

}


