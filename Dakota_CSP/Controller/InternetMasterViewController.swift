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
    private lazy var addresses : [String] = []
    private var detailViewController : InternetDetailViewController?
    
    private func setup() -> Void
    {
        //TODO: Replace URl's with actual links
        addresses = [
             "https://www.google.com",
             "https://www.google.com",
             "https://www.google.com",
             "https://www.google.com",
             "https://www.google.com"
                    ]
        if let splitView = splitViewController
        {
            let currentControllers = splitView.viewControllers
            detailViewController = currentControllers[0] as?
                InternetDetailViewController
        }
        
    }
        override public func didReceiveMemoryWarning()
        {
            super.didReceiveMemoryWarning()
        }
    override public func viewDidLoad()
    {
        super.viewDidLoad()
        setup()
        self.clearsSelectionOnViewWillAppear = false
    }
    //MARK:- Table view data source
     public func numberOfSelections(in tableView: UITableView) -> Int
    {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    override public func tableView( tableView: UITableView, numberOfRowsInSection : Int) -> Int
    {
        return internetTopics.count
    }
   override public func tableView( tableView: UITableView, cellForRowAtindexpath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        let currentText = internetTopics[indexPath.row]
        cell.textLabel!.text = currentText
        
        return cell
        
    }
    override public func prepare(for seque: UIStoryboardSegue, sender: Any?)
    {
        if seque.identifier! == "showDetail"
        {
            if let indexPath == self.tableView.indexPathForSelectedRow
            {
                let urlString = addresses[indexPath.row]
                let pageText : String
                
                if indexpath.row == 0
                {
                    //TODO: Replace your definitions use the """ operator
                    pageText = "All the definitions you wrote..."
                }
                else
                {
                    pageText = internetTopics[indexPath.row]
                }
                let controller = seque.destination as!
                    InternetDetailViewController
                
                controller.detailAddress = urlString
                controller.detailText = pageText
                controller.navigationItem.leftBarButtonItem = splitViewController?.displayModeButtonItem
                controller.navigationItem.leftItems.SupplementBackButton = true
            }
        }
    }
}




