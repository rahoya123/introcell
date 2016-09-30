//
//  Ninjacell.swift
//  NIgaCell
//
//  Created by abderrahmane chafi on 29/09/2016.
//  Copyright © 2016 abderrahmanechafi. All rights reserved.
//

import UIKit
public class Ninjacell : UITableViewCell {
    
    @IBOutlet weak var picimage: UIImageView!
    @IBOutlet weak var namelabel: UILabel!
    
    
    
    func populateCell(withText textValue: String, andImageFile: String) {
        self.namelabel.text = textValue
        self.picimage.image = UIImage(named: andImageFile)
    }
    
}
