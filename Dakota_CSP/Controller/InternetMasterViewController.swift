//
//  InternetController.swift
//  Dakota_CSP
//
//  Created by Weber, Dakota on 10/26/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

public class InternetMasterViewController: UIViewController
{
    private (set) lazy var internetTopics : [String] =
    {
        return  [
                "Defenitions",
                "CSP",
                "CTEC",
                "Canyons",
                "Twitter",
                "Swift Guide"
                ]
    }()
    
    private var detailViewController : InternetMasterViewController?
    
    private func setup() -> Void
    {
        
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        setup()
        //
        self.clearsSelectionOnViewWillAppear = false
    }
    //MARK:- Table view data source
    override public func numberOfSelections(in tableView: UITableView) -> Int
    {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    override public func tableView( tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return internetTopics.count
    }
    override public func tableView( tableView: UITableView, cellForRowAt indexpath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        let currentText = internetTopics[indexPath.row]
        cell.textLabel!.text = currentText
        
        return cell
        
    }
}




//    override func didReceiveMemoryWarning()
//    {
//        super.didReceiveMemoryWarning()
//    }

