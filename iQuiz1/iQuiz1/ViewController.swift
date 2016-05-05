//
//  ViewController.swift
//  iQuiz1
//
//  Created by Evan on 5/3/16.
//  Copyright © 2016 Evan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    let data = Data()
    var json : NSData = NSData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self
        self.tableView.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
        
        do {
            if let jsonResult = try NSJSONSerialization.JSONObjectWithData(data.json, options: NSJSONReadingOptions()) as? NSDictionary {
                print(jsonResult)
            }
        } catch let error as NSError {
            print(error.localizedDescription)
        }

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.titles.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //put the custom cell here
        let cell = tableView.dequeueReusableCellWithIdentifier("TopicCell", forIndexPath: indexPath) as! TopicCell
        
        let quiz = data.quizzes[indexPath.row]
        cell.title.text = quiz[0]
        cell.overview.text = quiz[1]
        
        cell.icon.image = UIImage(named: quiz[0])
        
        return cell
    }
    
    //todo: add in the view controller that reads in the questions
    //and the multiple choice shit with it
}

