//
//  Yeetable.swift
//  Dakota_CSP
//
//  Created by Weber, Dakota on 11/20/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import Foundation
public protocol Yeetable
{
    var yeetState : Bool {get set}
    func yeet() -> Void
    func isYeeted() -> Bool
}
