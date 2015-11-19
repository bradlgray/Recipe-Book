//
//  CreateRecipeVC.swift
//  Recipe-Book
//
//  Created by Brad Gray on 11/17/15.
//  Copyright © 2015 Brad Gray. All rights reserved.
//

import UIKit
import CoreData

class CreateRecipeVC: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    @IBOutlet weak var recipeTitle: UITextField!
    
    @IBOutlet weak var recipeIngredients: UITextField!
    
    @IBOutlet weak var recipeSteps: UITextField!
    
    @IBOutlet weak var recipeImg: UIImageView!
    
    @IBOutlet weak var addImgBtn: UIButton!
    
    @IBAction func addImg(sender: UIButton) {
        presentViewController(imagePicker, animated: true, completion: nil)
    }
    
    @IBAction func createRecipe(sender: UIButton) {
        if let title = recipeTitle.text where title != "" {
            let app = UIApplication.sharedApplication().delegate as! AppDelegate
            let context = app.managedObjectContext
            let entity = NSEntityDescription.entityForName("Recipe", inManagedObjectContext: context)!
            let recipe = Recipe(entity: entity, insertIntoManagedObjectContext: context)
            recipe.title = recipeTitle.text
            recipe.ingredients = recipeIngredients.text
            recipe.steps = recipeSteps.text
            recipe.setRecipeImage(recipeImg.image!)
            
            
            context.insertObject(recipe)
            do {
                try context.save()
            } catch {
                print("could not save")
            }
            self.navigationController?.popViewControllerAnimated(true)
            
        }
    }
    
 var imagePicker: UIImagePickerController

    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        recipeImg.layer.cornerRadius = 4.0
        recipeImg.clipsToBounds = true
    }

    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
       imagePicker.dismissViewControllerAnimated(true, completion: nil)
        recipeImg.image = image
        
        
    }

    
    
    
    
    
 }
