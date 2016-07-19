//
//  ColorsCollectionViewController.swift
//  iDraw
//
//  Created by Frezy Stone Mboumba on 7/19/16.
//  Copyright © 2016 Frezy Stone Mboumba. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

var red: CGFloat!
var green: CGFloat!
var blue: CGFloat!

class ColorsCollectionViewController: UICollectionViewController {

    let colors = Colors().colorBook
    let colorsValue = Colors().colorBookValue
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        self.collectionView!.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

  

    // MARK: UICollectionViewDataSource

    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return colors.count
    }

    override func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        red = colorsValue[indexPath.row][0] as! CGFloat
        green = colorsValue[indexPath.row][1] as! CGFloat
        blue = colorsValue[indexPath.row][2] as! CGFloat
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath)
        cell.backgroundColor = colors[indexPath.row]
        cell.layer.cornerRadius = cell.layer.frame.width/2
        cell.layer.borderWidth = 1.0
        cell.layer.borderColor = UIColor.blackColor().CGColor
        return cell
    }

   }
