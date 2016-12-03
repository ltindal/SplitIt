//
//  RequestViewController.swift
//  SplitIt
//
//  Created by Aaron Bailey on 11/28/16.
//  Copyright © 2016 Aaron Bailey. All rights reserved.
//

import UIKit

class RequestViewController: UIViewController {

    @IBOutlet weak var lentField: UITextField!
    @IBOutlet weak var forField: UITextField!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var destinationViewController = segue.destination as! RequestWithViewController
        
        destinationViewController.text = lentField.text
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func firstBackArrow(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

    @IBAction func didPressX(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    

}
