//
//  RequestSplitViewController.swift
//  SplitIt
//
//  Created by Aaron Bailey on 11/28/16.
//  Copyright © 2016 Aaron Bailey. All rights reserved.
//

import UIKit

class RequestSplitViewController: UIViewController {

    @IBOutlet weak var lentTotal: UILabel!
    var text: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lentTotal.text = text
    }
    
    
    @IBAction func backArrow(_ sender: Any) {
        navigationController!.popViewController(animated: true)
    }
    
    @IBAction func didPressX(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

    

}
