//
//  Recipe.swift
//  Recipe-Book
//
//  Created by Brad Gray on 11/17/15.
//  Copyright © 2015 Brad Gray. All rights reserved.
//

import Foundation
import CoreData
import UIKit


class Recipe: NSManagedObject {

    func setRecipeImage(img: UIImage) {
        
        let data = UIImagePNGRepresentation(img)
        self.recipeImg = data
        

    }

    
    func getRecipeImg() -> UIImage {
    
    let image = UIImage(data: self.recipeImg!)!
    return image
    
    
    
    }
    
    
        
        
   }
