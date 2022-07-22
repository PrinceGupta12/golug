//
//  HomeViewController.swift
//  golug
//
//  Created by Shiv on 01/07/22.
//

import UIKit

class HomeViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return games.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:UITableViewCell?=myTable.dequeueReusableCell(withIdentifier: "cell",for:indexPath)
        cell?.textLabel?.text=games[indexPath.row]
        return cell!
        
    }
    
    
    
    @IBOutlet weak var myText: UITextField!
    
    @IBOutlet weak var myTable: UITableView!
    
    var games:[String]=["Cricket","Hockey","Basketball","Football"]
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }

    @IBAction func saveButton(_ sender: Any) {
        
        guard let data = myText.text
        else {
            return
        }
        games.append(data)
        let alertTitle="Saving!!"
        let message="Data Has Been Added Succesfully in Table"
        let alertBox=UIAlertController(title: alertTitle, message: message, preferredStyle: .alert)
        
        
        let alertAction=UIAlertAction(title: "Ok", style: .default, handler: nil)
        alertBox.addAction(alertAction)
        present(alertBox, animated: true, completion: nil)
        
        myTable.reloadData()
        myText.text=""
        
        
        





    }
    
    @IBAction func backpagebtn(_ sender: Any) {
        
        self.navigationController?.popViewController(animated: true)
    }
    
    

}
