//
//  TabBarViewController.swift
//  homework-5-tumblr
//
//  Created by Scott Silverman on 3/6/15.
//  Copyright (c) 2015 Scott Silverman. All rights reserved.
//

import UIKit

class TabBarViewController: UIViewController {

    // Outlets
    @IBOutlet weak var tabBarView: UIView!
    @IBOutlet weak var contentView: UIView!
    
    // Tab bar button outlets
    @IBOutlet weak var homeButton: UIButton!
    @IBOutlet weak var searchButton: UIButton!
    @IBOutlet weak var composeButton: UIButton!
    @IBOutlet weak var accountButton: UIButton!
    @IBOutlet weak var trendingButton: UIButton!
    
    
    
    // Variables for tab bar view controllers
    var homeViewController: HomeViewController!
    var searchViewController: SearchViewController!
    var composeViewController: ComposeViewController!
    var accountViewController: AccountViewController!
    var trendingViewController: TrendingViewController!
    
    var currentViewController: UIViewController!
    var currentTabButton: UIButton!
    
    var fadeTransition: FadeTransition!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        // Get the view controllers and put them in variables
        homeViewController = storyboard.instantiateViewControllerWithIdentifier("homeViewStory") as HomeViewController
        searchViewController = storyboard.instantiateViewControllerWithIdentifier("searchViewStory") as SearchViewController
        composeViewController = storyboard.instantiateViewControllerWithIdentifier("composeViewStory") as ComposeViewController
        accountViewController = storyboard.instantiateViewControllerWithIdentifier("accountViewStory") as AccountViewController
        trendingViewController = storyboard.instantiateViewControllerWithIdentifier("trendingViewStory") as TrendingViewController
        
        currentViewController = homeViewController
        currentTabButton = homeButton
        
        homeTabDidPress(self)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func homeTabDidPress(sender: AnyObject) {
        removeChildView(currentViewController)
        currentTabButton.selected = false
        addChildViewController(homeViewController)
        var homeView = homeViewController.view
        homeView.frame = contentView.frame
        contentView.addSubview(homeView)
        homeViewController.didMoveToParentViewController(self)
        currentViewController = homeViewController
        currentTabButton = homeButton
        currentTabButton.selected = true
    }
    
    @IBAction func searchTabDidPress(sender: AnyObject) {
        removeChildView(currentViewController)
        currentTabButton.selected = false
        addChildViewController(searchViewController)
        var searchView = searchViewController.view
        searchView.frame = contentView.frame
        contentView.addSubview(searchView)
        searchViewController.didMoveToParentViewController(self)
        currentViewController = searchViewController
        currentTabButton = searchButton
        currentTabButton.selected = true
    }
    
    @IBAction func composeTabDidPress(sender: AnyObject) {
        performSegueWithIdentifier("composeSegue", sender: self)
    }
    
    @IBAction func accountTabDidPress(sender: AnyObject) {
        removeChildView(currentViewController)
        currentTabButton.selected = false
        addChildViewController(accountViewController)
        var accountView = accountViewController.view
        accountView.frame = contentView.frame
        contentView.addSubview(accountView)
        accountViewController.didMoveToParentViewController(self)
        currentViewController = accountViewController
        currentTabButton = accountButton
        currentTabButton.selected = true
    }
    
    @IBAction func trendingTabDidPress(sender: AnyObject) {
        removeChildView(trendingViewController)
        currentTabButton.selected = false
        addChildViewController(trendingViewController)
        var trendingView = trendingViewController.view
        trendingView.frame = contentView.frame
        contentView.addSubview(trendingView)
        trendingViewController.didMoveToParentViewController(self)
        currentViewController = trendingViewController
        currentTabButton = trendingButton
        currentTabButton.selected = true
    }
    
    func removeChildView(content: UIViewController){
        content.willMoveToParentViewController(nil)
        content.view.removeFromSuperview()
        content.removeFromParentViewController()
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        var destinationViewController = segue.destinationViewController as ComposeViewController
        
        fadeTransition = FadeTransition()
        fadeTransition.duration = 0.3
        
        destinationViewController.modalPresentationStyle = UIModalPresentationStyle.Custom
        destinationViewController.transitioningDelegate = fadeTransition
    }
    
}
