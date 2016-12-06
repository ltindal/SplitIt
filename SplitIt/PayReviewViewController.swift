//
//  PayReviewViewController.swift
//  SplitIt
//
//  Created by Aaron Bailey on 11/28/16.
//  Copyright © 2016 Aaron Bailey. All rights reserved.
//

import UIKit

class PayReviewViewController: UIViewController {
    
    var text: String!
    @IBOutlet weak var totalPay: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        totalPay.text = text

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didPressBack(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    

}
