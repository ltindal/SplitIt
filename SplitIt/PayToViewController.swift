//
//  PayToViewController.swift
//  SplitIt
//
//  Created by Aaron Bailey on 11/28/16.
//  Copyright © 2016 Aaron Bailey. All rights reserved.
//

import UIKit

class PayToViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var totalLabel: UILabel!
    var text: String!
    @IBOutlet weak var tableView: UITableView!
    
    let recents = ["Aaron Bailey", "Lauren Tindal", "Charlie Codepath", "Emmeline Kim", "Amrutha Krishnan", "Alex Watson", "Andrea Tovar", "Lisa Johnson", "Linda Thompson", "Laura Lee"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self

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
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return self.recents.count
        /*if (self.resultSearchController.isActive) {
            return self.filteredTableData.count
        }
        else {
            return self.recents.count
        }*/
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "NewFriendsCell") as! NewFriendsCell
        let recent = recents[indexPath.row]
        cell.userName.text = recents[indexPath.row]
        return cell
        
        /*if (self.resultSearchController.isActive) {
            cell.label.text = filteredTableData[indexPath.row]
            return cell
        }
        else {
            cell.label.text = recents[indexPath.row]
            
            if let index = self.tableView.indexPathForSelectedRow{
                cell.selectActive.isHidden = false
                cell.selectDefault.isHidden = true
            } else {
                cell.selectActive.isHidden = true
                cell.selectDefault.isHidden = false
            }
            return cell
        }*/
        
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("You selected cell #\(indexPath.row)!")
        }
    
    
    @IBAction func didPressBack(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    


}
