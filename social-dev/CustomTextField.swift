//
//  CustomTextField.swift
//  social-dev
//
//  Created by Joseph on 3/10/17.
//  Copyright © 2017 Joseph. All rights reserved.
//

import UIKit

class CustomTextField: UITextField {

    //Changing the x and y of the placeholder text
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: 10, dy: 5)
    }
    
    //Changing the x and y of the placeholder text whie editing
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: 10, dy: 5)
    }

}
