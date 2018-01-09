//
//  BucketItemCell.swift
//  Dakota_CSP
//
//  Created by Weber, Dakota on 1/9/18.
//  Copyright © 2018 CTEC. All rights reserved.
//

import UIKit

class BucketItemCell: UITableViewCell
{
    @IBOutlet weak var bucketItemText : UILabel!
    @IBOutlet weak var bucketItemSymbol : UILabel!
    @IBOutlet weak var bucketItemSignature : UILabel!
    
    var bucketITem : BucketItem!
    {
        didSet
        {
            updateCellView()
        }
    }
    private func updateViewCell() //Updates the contents of each cell using didSet
    {
        if
        {
            bucketItemSignature.text = bucketItem.itemAuthor
            bucketItemText.text = bucketItem.itemContents
        }
        else
        {
            bucketItemSignature.text = "author goes here"
            bucketItem.text = "text goes here"
        }
        bucketItemSymbol.text = randomEmojiSymbol()
    }
}
