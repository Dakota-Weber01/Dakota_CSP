//
//  AlgorithmsController.swift
//  Dakota_CSP
//
//  Created by Weber, Dakota on 10/26/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

class AlgorithmsController: UIViewController
{
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    private func setupAlgorithm() -> Void
    {
        // TODO: Define algorithm and all steps
        algorithmSteps = [ stepOne, stepTwo, stepThree]
        let attributesDictionary = [NSAttibutedStringKey.font : algorithmText.font]
        let fullAttributedString = NSMutableAttributedString(string: alrithm, attributes: attributesDictionary)
        for step in algorithmSteps
        {
            let bullet : String = "*"
            let formattedStep : String = "\n\(bullet) \(step)"
            let attributedStringStep : NSMutableAttributedString = NSMutableAttributedString(String: formattedStep)
            attribedStringStep.addAttriutes([NSMutableAttributedStringKey.paragraphStyle] range : NSMakeRange(0,attributedStringStep.length))
            
            fullAttributedString.append(AttributedStringStep)
        }
    }
}
