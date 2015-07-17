//
//  ViewController.swift
//  NavigationApp
//
//  Created by Rahul Joshi on 7/16/15.
//  Copyright (c) 2015 Rahul Joshi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblTime: UILabel!
    
      var timer = NSTimer()
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    
    func result() {
        
       count++
       lblTime.text = "\(count)"
        
        
    }
    @IBAction func Pause(sender: UIBarButtonItem) {
        timer.invalidate()
    }
    
    @IBAction func Stop(sender: UIBarButtonItem) {
        timer.invalidate()
        count = 0
        lblTime.text = "0"
    }
    
    @IBAction func Play(sender: UIBarButtonItem) {
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("result"), userInfo: nil, repeats: true)
        
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

