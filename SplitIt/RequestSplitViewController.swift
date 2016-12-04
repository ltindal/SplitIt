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
    
    @IBAction func didPressX(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let totalPay = Int(lentTotal.text!) ?? 0
        var payments = [totalPay/names.count]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell") as! CustomTableViewCell

        let name = names[indexPath.row]
        
        //useful for arrays of data
        cell.userName.text = name
        cell.userPayment.text = String(describing: payments)
        
        return cell
    }

    

}
