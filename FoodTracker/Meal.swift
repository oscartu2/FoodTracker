//
//  Meal.swift
//  FoodTracker
//
//  Created by Oscar on 6/29/17.
//  Copyright © 2017 otu. All rights reserved.
//

import UIKit

class Meal {
    
    //MARK: Properties
    
    var name: String
    var photo: UIImage?
    var rating: Int
    
    //MARK: Initialization
    
    init?(name: String, photo: UIImage?, rating: Int) {
        
        // Initialization should fail if there is no name or if rating is negative
        
        guard !name.isEmpty else {
            return nil
        }
        
        guard (rating >= 0) && (rating <= 5) else {
            return nil
        }
            
        // Initialize stored properties.
        
        self.name = name
        self.photo = photo
        self.rating = rating
    }
}
