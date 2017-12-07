//
//  CreativityController.swift
//  Dakota_CSP
//
//  Created by Weber, Dakota on 10/26/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit
public class CreativityController: UICollectionViewController, UICollectionViewDelegateFlowLayout
{
    private let reuseIdentifer = "artIdentifier"
    private let sectionInsets = UIEdgeInsets(top: 50.0, left: 20.0, bottom: 50.0, right: 20.0)
    private let itemsPerRo : CGFloat = 3
    
    private lazy var artSelection : [UIImage?] =
    {
        return [
            UIImage(named: "tiny.png"),
            UIImage(named: ""),
            UIImage(named: ""),
            UIImage(named: ""),
            UIImage(named: ""),
            UIImage(named: ""),
            UIImage(named: ""),
            UIImage(named: "")
               ]
    }()
    var largePhotoIndexPath: IndexPath?
    {
        didSet
        {
            var indexPaths = [IndexPath]()
            if let largePhotoIndexPath = largePhotoIndexPath
            {
                indexPaths.append(largePhotoIndexPath)
            }
            if let oldValue = oldValue
            {
                indexPaths.append(oldValue)
            }
            collectionView?.performBatchUpdates(
            {
                self.collectionView?.reloaditems(at: indexPaths)
            })
            {
                completed in
                
                if let largePhotodexPath = self.largePhotoIndexPath
                {
                    self.collectionView?.scrollToItem(at: largePhotoIndexPath,
                                                      at: .centeredVertically,
                                                      animated: true)
                }
            }
        }
    }
    public override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    public override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
}
