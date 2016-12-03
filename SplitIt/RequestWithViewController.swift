//
//  RequestWithViewController.swift
//  SplitIt
//
//  Created by Aaron Bailey on 11/28/16.
//  Copyright © 2016 Aaron Bailey. All rights reserved.
//

import UIKit

class RequestWithViewController: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
    var text: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        totalLabel.text = text

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var destinationViewController = segue.destination as! RequestSplitViewController
        
        destinationViewController.text = totalLabel.text
        
    }
   
    @IBAction func backArrow(_ sender: Any) {
        navigationController!.popViewController(animated: true)
    }

}
