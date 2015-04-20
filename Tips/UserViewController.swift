//
//  UserViewController.swift
//  Tips
//
//  Created by Nikki Shah on 4/19/15.
//  Copyright (c) 2015 Nikki Shah. All rights reserved.
//

import UIKit

class UserViewController: UIViewController {

    @IBOutlet weak var tipControler: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func onValueChanged(sender: AnyObject) {
        var tipPercentages = [0.18,0.2, 0.3]
        var defaults = NSUserDefaults.standardUserDefaults()
        defaults.setInteger(tipControler.selectedSegmentIndex, forKey: "defaultPercentage")
        defaults.synchronize()
       
    }
    @IBAction func onBackClicked(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func viewWillAppear(animated: Bool) {
        var defaults = NSUserDefaults.standardUserDefaults()
        var defaultPercentage = defaults.integerForKey("defaultPercentage")
        tipControler.selectedSegmentIndex = defaultPercentage
    }
}
