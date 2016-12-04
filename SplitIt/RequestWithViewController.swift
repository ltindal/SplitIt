//
//  RequestWithViewController.swift
//  SplitIt
//
//  Created by Aaron Bailey on 11/28/16.
//  Copyright © 2016 Aaron Bailey. All rights reserved.
//

import UIKit

class RequestWithViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var totalLabel: UILabel!
    var text: String!
    @IBOutlet weak var tableView: UITableView!

    let names = ["Aaron Bailey", "Amrutha Krishnan", "Lauren Tindal"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //tableView.delegate = self
        tableView.dataSource = self
        
        totalLabel.text = text

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var destinationViewController = segue.destination as! RequestSplitViewController
        
        destinationViewController.text = totalLabel.text
        
    }
   
    @IBAction func backArrow(_ sender: Any) {
        navigationController!.popViewController(animated: true)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "FriendsCell") as! FriendsCell
        
        let name = names[indexPath.row]
        
        //useful for arrays of data
        cell.label.text = name
        
        return cell
    }


}
