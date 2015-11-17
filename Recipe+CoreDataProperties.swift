//
//  Recipe+CoreDataProperties.swift
//  Recipe-Book
//
//  Created by Brad Gray on 11/17/15.
//  Copyright © 2015 Brad Gray. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Recipe {

    @NSManaged var recipeImg: NSData?
    @NSManaged var title: String?
    @NSManaged var ingredients: String?
    @NSManaged var steps: String?

}
