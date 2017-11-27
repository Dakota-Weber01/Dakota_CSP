//
//  Borker.swift
//  Dakota_CSP
//
//  Created by Weber, Dakota on 11/20/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit
public class Borker : Yeetable
{
    private var borkerColor :UIColor
    //MARK: Yeetable data member
    public var yeetState : Bool
    
    public init()
    {
        self.borkerColor = UIColor()
        self.yeetState = false
    }
    
    //MARK:- Yeetable methods
    public func yeet() -> Void
    {
            print("I am yeety")
            yeetState = true
    }
    
    public func isYeeted() -> Bool
    {
        if(yeetState)
        {
            print("Yeeted")
        }
    else{
            print("Un-Yeeted")
        }
    }
}
