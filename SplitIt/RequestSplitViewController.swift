//
//  RequestSplitViewController.swift
//  SplitIt
//
//  Created by Aaron Bailey on 11/28/16.
//  Copyright © 2016 Aaron Bailey. All rights reserved.
//

import UIKit

class RequestSplitViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var lentTotal: UILabel!
    var text: String!
    let names = ["Aaron Bailey", "Amrutha Krishnan", "Lauren Tindal"]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self

        lentTotal.text = text
    }
    
    
    @IBAction func backArrow(_ sender: Any) {
        navigationController!.popViewController(animated: true)
    }
    
    @IBAction func didPressX(_ sender: Any)  {
            // [1] Create a new "Storyboard2" instance.
            let storyboard = UIStoryboard(name: "Home", bundle: nil)
            
            // [2] Create an instance of the storyboard's initial view controller.
            let controller = storyboard.instantiateViewController(withIdentifier: "HomeSB") as UIViewController
            
            // [3] Display the new view controller.
            present(controller, animated: true, completion: nil)
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let totalPay = Int(lentTotal.text!) ?? 0
        let payments = totalPay/(names.count + 1)
        let userPayment = String(describing: payments)
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell") as! CustomTableViewCell

        let name = names[indexPath.row]
        
        //useful for arrays of data
        cell.userName.text = name
        //cell.userPayment.text = String(format: "$%.2f", payments)
        cell.userPayment.text = userPayment
        
        return cell
    }

    

}
