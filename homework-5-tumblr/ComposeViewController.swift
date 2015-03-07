//
//  ComposeViewController.swift
//  homework-5-tumblr
//
//  Created by Scott Silverman on 3/6/15.
//  Copyright (c) 2015 Scott Silverman. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {

    @IBOutlet weak var textButton: UIImageView!
    @IBOutlet weak var photoButton: UIImageView!
    @IBOutlet weak var quoteButton: UIImageView!
    @IBOutlet weak var linkButton: UIImageView!
    @IBOutlet weak var chatButton: UIImageView!
    @IBOutlet weak var videoButton: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        textButton.center.y = 600
        photoButton.center.y = 600
        quoteButton.center.y = 600
        linkButton.center.y = 600
        chatButton.center.y = 600
        videoButton.center.y = 600
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func nevermindButtonDidPress(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func viewWillAppear(animated: Bool) {
    }
    override func viewDidAppear(animated: Bool) {
        UIView.animateWithDuration(0.35, delay: 0.15, usingSpringWithDamping: 2, initialSpringVelocity: 0.5, options: nil, animations: { () -> Void in
            self.textButton.center.y = 200
            }) { (Bool) -> Void in
                //
        }
        UIView.animateWithDuration(0.35, delay: 0.2, usingSpringWithDamping: 1, initialSpringVelocity: 0.5, options: nil, animations: { () -> Void in
            self.photoButton.center.y = 200
            }) { (Bool) -> Void in
                //
        }
        UIView.animateWithDuration(0.35, delay: 0.3, usingSpringWithDamping: 1, initialSpringVelocity: 0.5, options: nil, animations: { () -> Void in
            self.quoteButton.center.y = 200
            }) { (Bool) -> Void in
                //
        }
        UIView.animateWithDuration(0.35, delay: 0.2, usingSpringWithDamping: 1, initialSpringVelocity: 0.5, options: nil, animations: { () -> Void in
            self.linkButton.center.y = 328
            }) { (Bool) -> Void in
                //
        }
        UIView.animateWithDuration(0.35, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 0.5, options: nil, animations: { () -> Void in
            self.chatButton.center.y = 328
            }) { (Bool) -> Void in
                //
        }
        UIView.animateWithDuration(0.3, delay: 0.2, usingSpringWithDamping: 1, initialSpringVelocity: 0.5, options: nil, animations: { () -> Void in
            self.videoButton.center.y = 328
            }) { (Bool) -> Void in
                //
        }
    }
    override func viewWillDisappear(animated: Bool) {
        UIView.animateWithDuration(1, delay: 0.15, usingSpringWithDamping: 2, initialSpringVelocity: 0.5, options: nil, animations: { () -> Void in
            self.textButton.center.y = -200
            }) { (Bool) -> Void in
                //
        }
        UIView.animateWithDuration(1, delay: 0.2, usingSpringWithDamping: 1, initialSpringVelocity: 0.5, options: nil, animations: { () -> Void in
            self.photoButton.center.y = -200
            }) { (Bool) -> Void in
                //
        }
        UIView.animateWithDuration(1, delay: 0.3, usingSpringWithDamping: 1, initialSpringVelocity: 0.5, options: nil, animations: { () -> Void in
            self.quoteButton.center.y = -200
            }) { (Bool) -> Void in
                //
        }
        UIView.animateWithDuration(1, delay: 0.2, usingSpringWithDamping: 1, initialSpringVelocity: 0.5, options: nil, animations: { () -> Void in
            self.linkButton.center.y = -200
            }) { (Bool) -> Void in
                //
        }
        UIView.animateWithDuration(1, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 0.5, options: nil, animations: { () -> Void in
            self.chatButton.center.y = -200
            }) { (Bool) -> Void in
                //
        }
        UIView.animateWithDuration(1, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 0.5, options: nil, animations: { () -> Void in
            self.videoButton.center.y = -200
            }) { (Bool) -> Void in
                //
        }
    }
    override func viewDidDisappear(animated: Bool) {
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
