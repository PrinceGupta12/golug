//
//  DetailsTableViewController.swift
//  golug
//
//  Created by Shiv on 01/07/22.
//

import UIKit

class DetailsTableViewController: UITableViewController {
    
    var nameArray =
        ["Prince","Gulu","Rajkumar","Engineer"]
    var addressArray =
        ["ghazipur","banars","delhi","agara"]
    var arrimg:[UIImage] = [#imageLiteral(resourceName: "img4"),#imageLiteral(resourceName: "download"),#imageLiteral(resourceName: "facebook-f-logo-transparent-facebook-f-22"),#imageLiteral(resourceName: "WhatsApp Image 2022-06-30 at 11.57.08 AM"),]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func btn12(_ sender: Any) {
        signOut()        
    }
    
    func signOut() {
        UserDefaults.standard.set(false, forKey: "isLogin")
        UserDefaults.standard.removeObject(forKey: "EmailId")
        UserDefaults.standard.removeObject(forKey: "Password")
        exit(0)
    }
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nameArray.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "detailsTableViewCell") as? detailsTableViewCell else { return UITableViewCell() }
        cell.lbl1.text = nameArray[indexPath.row]
        cell.lbl2.text = addressArray[indexPath.row]
        cell.img1.contentMode = .scaleAspectFit
        cell.img1.image = arrimg[indexPath.row]

        return cell
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }

    override func tableView(_ tableView: UITableView,didSelectRowAt indexPath:
                            IndexPath) {
        let detail:InformationViewController = self.storyboard?.instantiateViewController(withIdentifier: "InformationViewController") as! InformationViewController
        detail.strlbl1 = nameArray[indexPath.row]
        detail.strlbl2 = addressArray[indexPath.row]
        detail.strimg = arrimg[indexPath.row]
        
        self.navigationController?.pushViewController(detail, animated: true)
       
    }
    
    
}

