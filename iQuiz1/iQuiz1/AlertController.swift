//
//  AlertController.swift
//  iQuiz1
//
//  Created by Evan on 5/4/16.
//  Copyright © 2016 Evan. All rights reserved.
//

import UIKit

class AlertController: UIViewController {

    
    
    
    
    override func viewDidLoad() {
       
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidLoad()
        let alert = UIAlertController(title: "Test", message: "Alert", preferredStyle: UIAlertControllerStyle.Alert);
        
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Cancel, handler: nil))
            
            showViewController(alert, sender: self)
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
