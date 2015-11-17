//
//  ViewController.swift
//  Recipe-Book
//
//  Created by Brad Gray on 11/11/15.
//  Copyright © 2015 Brad Gray. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    var recipes = [Recipe]()
   
    override func viewDidLoad() {
        super.viewDidLoad()
       tableView.delegate = self
        tableView.dataSource = self
       
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 36
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recipes.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    
        if let cell = tableView.dequeueReusableCellWithIdentifier("recipeCell") as? recipeCell {
            let recipe = recipes[indexPath.row]
            cell.configureCell(recipe)
            return cell
        } else {
            return recipeCell()
        }
    
    }
    
    
    
    
    
}