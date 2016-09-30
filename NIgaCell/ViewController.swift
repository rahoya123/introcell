//
//  ViewController.swift
//  NIgaCell
//
//  Created by abderrahmane chafi on 29/09/2016.
//  Copyright © 2016 abderrahmanechafi. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var names : [String ] = []
    var pic:[String] = []
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        names = ["Gary", "Harry", "Larry", "Perry"]
        pic = ["Goat.png", "Hippo.png", "Lion.png", "Pig.png"]
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
   override  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath:  indexPath) as! Ninjacell
        let pics = pic [indexPath.row]
        let name = names [indexPath.row]
        
        cell.populateCell(withText: name, andImageFile: pics)
        
        return cell

    }
   override  func numberOfSectionsInTableView(tableView: UITableView) -> Int {
     return   1
    }
}

