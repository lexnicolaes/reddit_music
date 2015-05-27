//
//  TrackGridViewController.swift
//  ListenToThis
//
//  Created by Lex Nicolaes on 03-05-15.
//  Copyright (c) 2015 Polyon. All rights reserved.
//

import UIKit
import Haneke

let reuseIdentifier = "trackCell"
let imageViewTag = 110
let kSegueIdentifier = "playTrack"

class TrackGridViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == kSegueIdentifier
        {
            if let player = segue.destinationViewController as? PlayerViewController
            {
                player.trackImageString = "http://upload.wikimedia.org/wikipedia/en/8/85/Wild_Beasts_-_Present_Tense.jpg"
            }
        }
    }

    // MARK: UICollectionViewDataSource

    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //#warning Incomplete method implementation -- Return the number of items in the section
        return 20
    }

    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as! UICollectionViewCell
    
        // Configure the cell
        cell.backgroundColor = UIColor.whiteColor()
        
        var imageView : UIImageView? = cell.viewWithTag(imageViewTag) as? UIImageView
        //let imageView = self.view.viewWithTag(imageViewTag) as! UIImageView
        imageView!.hnk_setImageFromURL(NSURL(string: "http://upload.wikimedia.org/wikipedia/en/8/85/Wild_Beasts_-_Present_Tense.jpg")!)
    
        return cell
    }
    
    override func collectionView(collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, atIndexPath indexPath: NSIndexPath) -> UICollectionReusableView {
        var header: UICollectionReusableView?
        
        if kind == UICollectionElementKindSectionHeader {
            header = collectionView.dequeueReusableSupplementaryViewOfKind(kind, withReuseIdentifier: "headerView", forIndexPath: indexPath) as? UICollectionReusableView
        }
        
        return header!
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(collectionView: UICollectionView, shouldHighlightItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(collectionView: UICollectionView, shouldSelectItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(collectionView: UICollectionView, shouldShowMenuForItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return false
    }

    override func collectionView(collectionView: UICollectionView, canPerformAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) -> Bool {
        return false
    }

    override func collectionView(collectionView: UICollectionView, performAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) {
    
    }
    */

}
