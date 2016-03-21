//
//  ViewController.swift
//  iOSExamples
//
//  Created by Semper_Idem on 16/3/21.
//  Copyright © 2016年 星夜暮晨. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var webLabel: UILabel!
    @IBOutlet weak var switchControl: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        guard let destination = segue.destinationViewController as? WebViewController else { return }
        destination.text = textView.text
        destination.isWKView = switchControl.on
    }
    
    // MARK: Actions
    
    @IBAction func actionSwitch(sender: UISwitch) {
        if sender.on {
            webLabel.text = "WKWebView"
        } else {
            webLabel.text = "UIWebView"
        }
    }
    
    @IBAction func actionButton(sender: UIButton) {
        performSegueWithIdentifier("ShowDetailSegue", sender: self)
    }
}
