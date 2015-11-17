//
//  recipeCellVC.swift
//  Recipe-Book
//
//  Created by Brad Gray on 11/17/15.
//  Copyright © 2015 Brad Gray. All rights reserved.
//

import UIKit
import CoreData

class recipeCell: UITableViewCell {
    @IBOutlet weak var recipeTitle: UILabel?
    @IBOutlet weak var recipeImg: UIImageView?
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

          }
    func configureCell(recipe: Recipe) {
        recipeTitle?.text = recipe.title
        recipeImg?.image = recipe.getRecipeImg()
    }
}
