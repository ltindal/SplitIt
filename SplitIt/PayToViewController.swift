//
//  PayToViewController.swift
//  SplitIt
//
//  Created by Aaron Bailey on 11/28/16.
//  Copyright © 2016 Aaron Bailey. All rights reserved.
//

import UIKit

class PayToViewController: UIViewController {
    
    @IBOutlet weak var totalLabel: UILabel!
    var text: String!

    override func viewDidLoad() {
        super.viewDidLoad()

        totalLabel.text = text
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var destinationViewController = segue.destination as! PayReviewViewController
        
        destinationViewController.text = totalLabel.text
        
    }
    
    @IBAction func didPressX(_ sender: Any) {
        // [1] Create a new "Storyboard2" instance.
        let storyboard = UIStoryboard(name: "Home", bundle: nil)
        
        // [2] Create an instance of the storyboard's initial view controller.
        let controller = storyboard.instantiateViewController(withIdentifier: "HomeSB") as UIViewController
        
        // [3] Display the new view controller.
        present(controller, animated: true, completion: nil)
    }
    
    
    @IBAction func didPressBack(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }


}
