//
//  DrawingView.swift
//  Dakota_CSP
//
//  Created by Weber, Dakota on 12/5/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

public class DrawingView: UIView
{
    override public func draw(_ rect: CGRect)
    {
        //Drawing Code
        drawStickFigure().stroke()
    }
 
    private func drawStickFigure() -> UIBezierPath
    {
        let stickFigure = UIBezierPath()
        
    UIColor.blue.setStroke()
        stickFigure.lineWidth = 3.0
        
        stickFigure.addArc(withCenter: CGPoint(x: 200, y: 200),
                           radius: CGFloat(20),
                           startAngle: CGFloat(0),
                           endAngle: CGFloat(2) * CGFloat.pi,
                           clockwise: true)
        stickFigure.move(to: CGPoint(x: 200, y: 220))
        stickFigure.addLine(to: CGPoint(x:200, y: 270))
        stickFigure.move(to: CGPoint(x:180, y: 240))
        stickFigure.addLine(to: CGPoint(x:220, y:240))
        stickFigure.move(to: CGPoint(x:200, y: 270))
        stickFigure.addLine(to: CGPoint(x: 220, y: 300))
        
        return stickFigure
    }
    public func drawTurtle() -> Void
    {
        let logo = UIBezierPath()
        UIColor.green.setFill()
        logo.move(to: CGPoint(x: 50, y: 250))
        logo.addLine(to: CGPoint(x: 100, y:300))
        logo.addLine(to: CGPoint(x: 50, y: 350))
        logo.close()
        logo.fill()
    }

}
