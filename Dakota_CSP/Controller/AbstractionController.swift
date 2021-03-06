//
//  AbstractionController.swift
//  Dakota_CSP
//
//  Created by Weber, Dakota on 10/26/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

public class AbstractionController : UIPageViewController, UIPageViewControllerDataSource
{
    //MARK: Array of subviews
    private (set) lazy var orderedAbstractionViews : [UIViewController] =
    {
        return [
            self.newAbstractionViewController(abstractionLevel: "Block"),
            self.newAbstractionViewController(abstractionLevel: "Java"),
            self.newAbstractionViewController(abstractionLevel: "ByteCode"),
            self.newAbstractionViewController(abstractionLevel: "Binary"),
            self.newAbstractionViewController(abstractionLevel: "AndGate")
    ]
    }()
    //Helper method to retrieve the correct ViewController
    private func newAbstractionViewController(abstractionLevel : String) -> UIViewController
    {
        return UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "\(abstractionLevel)ViewController")
    }
    override public func viewDidLoad()
    {
        super.viewDidLoad()
        dataSource = self
        
        if let firstViewController = orderedAbstractionViews.first
        {
                setViewController([firstViewController],
                                  direction: .forward,
                                  animated: true,
                                  completion: nil)
        }
    }
    //MARK:- Support for dots i the UIPageViewController
    public func pageViewController(_ pageViewController: UIPageViewController, viewControllerBeforeviewController: UIViewController) -> UIViewController?
    {
        guard let viewControllerIndex = orderedAbstractionViews.index(of: [firstViewController])
        else
    {
        return nil
    }
       let previousIndex = viewControllerIndex - 1
        
        guard previousIndex >= 0
        else
        {
            return orderedAbstractionViews.last
        }
        guard orderedAbstractionViews.count > previousIndex
        else
        {
            return nil
        }
        return orderedAbstractionViews[previousIndex]
    }
    public func  presentationCount(for pageViewController: UIPageViewController) -> Int
    {
        return orderedAbstractionViews.count
    }
    
}
