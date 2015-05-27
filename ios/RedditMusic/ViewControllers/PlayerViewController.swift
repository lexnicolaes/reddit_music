//
//  PlayerViewController.swift
//  RedditMusic
//
//  Created by Lex Nicolaes on 05-05-15.
//  Copyright (c) 2015 Polyon. All rights reserved.
//

import UIKit
import Haneke

class PlayerViewController: UIViewController {
    var trackImageString: String = ""
    @IBOutlet var trackImage: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        trackImage.hnk_setImageFromURL(NSURL(string: trackImageString)!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func dismissView(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
